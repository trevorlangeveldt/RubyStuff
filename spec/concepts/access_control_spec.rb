require 'rspec'
require './lib/concepts/access_control'

describe "Access to public methods" do
  it "should transfer 1000 from cheque account to savings account" do
    @bank_accounts = Accounts.new
    #@bank_accounts.transfer_to_savings(1000)
    #@bank_accounts.cheque.balance.should == 4000
    #@bank_accounts.savings.balance.should == 6000
  end
end
