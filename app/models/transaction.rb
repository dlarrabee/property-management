class Transaction < ActiveRecord::Base
  validates_presence_of :amount, :description

  def self.summary
    Transaction.all.inject({}) do |hash,item|
      key = "#{item.transaction_date.strftime("%b")} #{item.transaction_date.year}"
      hash.merge!( { key => (hash[key] || 0) + item.amount.to_f } )
    end
  end

end
