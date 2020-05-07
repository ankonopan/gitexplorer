# frozen_string_literal: true

module Types
  module Git
    class Repositories
      attr_accessor :count, :repos
      def initialize(response)
        @count = response.total_count
        @repos = response.items.map { |repo| Repository.new(repo) }
      end
    end
  end
end
