describe GitExplorer::Repository do
  let(:config) {  { client: Octokit::Client.new(netrc: true) } }
  subject { described_class.new(config) }

  it "searchs on public repositories by a given string" do
    subject.search("octokit").tap do |response|
      expect(response).to be_a(Types::Git::Repositories)
      expect(response.count).to eq(3)
      expect(response.repos.first).to be_a(Types::Git::Repository)
    end
  end

  it 'returns an empty repository list when there are no available repositories' do
    subject.search("lsakdjffhasldfhalskfdj").tap do |response|
      expect(response).to be_a(Types::Git::Repositories)
      expect(response.count).to eq(0)
    end
  end
end
