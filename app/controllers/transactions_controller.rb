class TransactionsController < ApplicationController
  def index
    @summaries = Transaction.summary
  end
end
