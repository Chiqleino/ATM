class Account

attr_accessor :pin_code, :balance , :account_status, :exp_date

  def initialize
    @pin_code = generate_pin
    @balance = 0
    @account_status = :active
  end

def self.deactivate(account)
  account.account_status = :deactivated
end

private

  def generate_pin
    rand(1000..9999)
  end
end
