class DifferentCurrencyCodeError <RuntimeError
end

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
      @amount <=> money_to_compare.amount
    else
      return nil
    end
  end

  def add_money(*money_to_add)
    if @code = money_to_add.code
      @amount += money_to_add.amount
    else
      return nil
    end
  end
  def sub_money(*money_to_sub)
    if @code = money_to_sub.code
      @amount -= money_to_sub.amount
    else
      return nil
    end
  end
  def multi_money(*money_to_multi)
    if @code = money_to_multi.code
      @amount *= money_to_multi.amount
    else
      return nil
    end
  end

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

# money = Currency.new(20, :USD)
# p money.amount
#
# money_amount = gets.chomp.to_i
# money.amount=(money_amount)
# p money.amount
#
# wallet = Currency.new(100, :GBP)
# p wallet.code
#
# wallet.code=(money.code)
# p wallet.code
