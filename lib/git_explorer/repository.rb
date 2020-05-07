# frozen_string_literal: true

module GitExplorer
  # :nodoc:
  class Repository
    attr_accessor :config, :client

    def initialize(config = {})
      case config
      in {}
      raise 'Invalid configuration'
      else
        @config = config
        @client = config[:client]
      end
    end

    def search(...)
      Types::Git::Repositories.new(client.search_repositories(...))
    end
  end
end
