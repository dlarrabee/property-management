require 'spec_helper'

describe Transaction do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:amount) }

  it "should return the monthly summary" do
    Transaction.stub(:all).and_return(
      [
        double(transaction_date: Date.parse('2013-01-01'), amount: 100),
        double(transaction_date: Date.parse('2013-01-01'), amount: 200),
        double(transaction_date: Date.parse('2013-02-01'), amount: 100)
      ]
    )
    expect(Transaction.summary).to eq({ 'Jan 2013' => 300.0, 'Feb 2013' => 100.0 })
  end
end
