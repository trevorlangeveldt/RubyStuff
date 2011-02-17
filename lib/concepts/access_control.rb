class Accounts
  @cheque = Cheque.new(5000)
  @savings = Savings.new(5000)
  
  private # all subsequent methods are marked private 
    def debit(account, amount)
      account.balance -= amount
    end
    
    def credit(account, amount)
      account.balance += amount
    end
    
  public # all subsequent methods are marked public
    def transfer_to_savings(amount)
      debit(@cheque, amount)
      credit(@savings, amount)
    end
end

class Account
  public :balance    # Another way of marking the access control on a field or method!!
  attr_reader :balance

  def initialize(opening_balance)
    @balance = opening_balance 
  end

  def greater_balance_than(other)
    @balance > other.balance
  end
end

class Savings < Account
end

class Cheque < Account
end