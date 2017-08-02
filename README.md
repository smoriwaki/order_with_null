# OrderWithNull

Add support options of ordering about null values for PostgreSQL.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'order_with_null'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install order_with_null

## Usage

```ruby
User.order(User.arel_table[:age].desc.nulls_last)
User.order(User.arel_table[:name].asc.nulls_first)
Product.order(Arel::Nodes::InfixOperation.new('*', Product.arel_table[:price], Product.arel_table[:quantity]).desc.nulls_last)
Product.order(Arel::Nodes::NullsFirst.new(Arel::Nodes::Descending.new(Product.arel_table[:quantity])))
```

## Contributing

Bug reports and pull requests are accepted on GitHub at https://github.com/smoriwaki/order_with_null.

