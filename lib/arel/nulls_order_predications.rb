module Arel
  module NullsOrderPredications
    def nulls_last
      Nodes::NullsLast.new self
    end

    def nulls_first
      Nodes::NullsFirst.new self
    end
  end
end
