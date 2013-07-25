require 'spec_helper'

describe Transaction do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:amount) }
end
