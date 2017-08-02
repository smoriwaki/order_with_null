module Arel
  module Visitors
    class PostgreSQL
    private
      def visit_Arel_Nodes_NullsFirst(o, collector)
        visit(o.expr, collector) << ' NULLS FIRST'
      end

      def visit_Arel_Nodes_NullsLast(o, collector)
        visit(o.expr, collector) << ' NULLS LAST'
      end
    end
  end
end
