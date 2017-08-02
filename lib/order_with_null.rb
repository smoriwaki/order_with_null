require 'order_with_null/version'
require 'arel'
require 'arel/nodes/nulls_first'
require 'arel/nodes/nulls_last'
require 'arel/visitors/postgresql_with_null'
require 'arel/nulls_order_predications'

module Arel
  module Nodes
    class Ordering
      include NullsOrderPredications
    end
  end
end
