class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

  def valid?
    @balance > 0 && @status == "open"
  end

  def close_account
    @status = "closed"
  end
  
  def reverse_transfer
    if self.valid? && @status == "complete" && receiver.balance > @amount
      receiver.balance -= amount
      sender.balance += amount
      @status = "reversed"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
end 