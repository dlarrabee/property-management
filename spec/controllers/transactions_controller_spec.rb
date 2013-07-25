require 'spec_helper'

describe TransactionsController do

  describe "#index" do

    it "should show transactions for the current year by default" do
      get :index
      expect(response).to render_template('index')
    end
  end

end
