# frozen_string_literal: true

# :nodoc:
class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :client, -> { Octokit::Client.new(netrc: true) }
    set :repository, -> { GitExplorer::Repository.new({ client: client }) }
  end

  get '/' do
    @q = params.fetch('q', nil)
    @repositories = shearch(@q)
    erb :index
  end

  def shearch(query)
    if query
      settings.repository.search(@q, { archived: false, disabled: false })
    else
      Types::Git::Repositories.empty
    end
  end
end
