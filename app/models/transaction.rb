class Transaction < ActiveRecord::Base
  validates_presence_of :amount, :description
end
