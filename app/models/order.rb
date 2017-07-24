class Order < ApplicationRecord
  enum pay_type: {
    "Check"          => 0,
    "Credit car"     => 1,
    "Purchase order" => 2
  }
end
