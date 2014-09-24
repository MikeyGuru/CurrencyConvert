class Currency
  include Comparable
  attr_reader :amount, :code
  attr_writer :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end
  def <=>(money_to_compare)
    if @code == money_to_compare.code
      @value <=> money_to_compare.amount
    else
      return nil
    end
  end
  

  def usd(amount, code)
    usd_value = []
    usd_input = gets.chomp.to_i
    usd_value << usd_input
  end


  # def amount
  #   @amount
  # end
  #
  # def code
  #   @code
  # end
  #
  # def amount=(value)
  #   @amount = value
  # end
  #
  # def code=(value)
  #   @code = value
  # end
end

money = Currency.new(20, :USD)
p money.amount

money_amount = gets.chomp.to_i
money.amount=(money_amount)
p money.amount

wallet = Currency.new(100, :GBP)
p wallet.code

wallet.code=(money.code)
p wallet.code
