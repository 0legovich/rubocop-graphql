# frozen_string_literal: true

module RuboCop
  module GraphQL
    module NodePattern
      extend RuboCop::NodePattern::Macros

      def_node_matcher :field_definition?, <<~PATTERN
        (send nil? :field ...)
      PATTERN

      def_node_matcher :field_definition_with_body?, <<~PATTERN
        (block
          (send nil? :field ...)
          ...
        )
      PATTERN
    end
  end
end
