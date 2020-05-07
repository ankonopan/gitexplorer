# frozen_string_literal: true

module Types
  module Git
    # :nodoc:
    class Repository
      attr_accessor :name, :full_name, :url, :description

      def initialize(response)
        @name = response.name
        @full_name = response.full_name
        @url = response.url
        @description = response.description
      end

      def to_h
        {
          name: name,
          full_name: full_name,
          url: url,
          description: description
        }
      end
    end
  end
end
