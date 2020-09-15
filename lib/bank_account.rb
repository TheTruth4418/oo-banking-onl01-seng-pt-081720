class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name,status = "open")
    @name = name
    @balance = balance
    @status = status
    @balance = 1000
  end
  def deposit(amount)
    @balance += amount
  end
  def display_balance
    p "Your balance is $#{@balance}."
  end
  def valid?
    self.status == "open" && self.balance > 0 ? true : false
  end
  def close_account
    self.status = "closed"
  end
end
