module Arel
  ###
  # Methods for creating various nodes
  module FactoryMethods
    def create_join to, constraint = nil, klass = Nodes::InnerJoin
      klass.new(to, constraint)
    end

    def create_string_join to
      create_join to, nil, Nodes::StringJoin
    end

    def create_and clauses
      Nodes::And.new clauses
    end

    def create_on expr
      Nodes::On.new expr
    end

    def grouping expr
      Nodes::Grouping.new expr
    end
  end
end
