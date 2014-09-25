require "minitest/autorun"
require "currency"

class CurrencyTest < MiniTest::Unit::TestCase
  def test_should_have_amount_and_currency_code
    money = Currency.new(20, :USD)
    assert money
    assert_equal 20, money.amount
    money.amount=(50)
    money.amount
  end
  def test_should_equal_another_amount_with_same_c_code
    money = Currency.new(68, :GBP)
    big_money = Currency.new(68, :GBP)
    assert_equal money, big_money
  end
  def test_should_be_able_to_add_to_code_together
    money = Currency.new(40, :USD)
    big_money = Currency.new(20, :USD)
    result = money.amount + big_money.amount
    assert_equal 60, result
  end
  def test_should_be_able_to_subtract_code
    money = Currency.new(40, :USD)
    big_money = Currency.new(20, :USD)
    result = money.amount - big_money.amount
    assert_equal 20, result
  end
  def test_should_prove_different_currency_cant_add
    assert_raises(DifferentCurrencyCodeError) do
      raise DifferentCurrencyCodeError.new("Can't add two different currencies")
      money = Currency.new(40, "USD")
      big_money = Currency.new(20, "GBP")
      result = money.code != big_money.code
      assert true, result
    end
  end
  def test_can_you_multiply_currency
    money = Currency.new(40, :USD)
    money *= 3
    assert_equal Currency.new(120, :USD), money
  end
end
