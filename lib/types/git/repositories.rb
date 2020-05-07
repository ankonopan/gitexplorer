# frozen_string_literal: true

module Types
  module Git
    # :nodoc:
    class Repositories
      attr_accessor :count, :repos
      def initialize(response)
        @count = response.total_count
        @repos = response.items.map { |repo| Repository.new(repo) }
      end

      def empty?
        @repos.empty?
      end

      def self.empty
        new(OpenStruct.new(total_count: 0, items: []))
      end
    end
  end
end
