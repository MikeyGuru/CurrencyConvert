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
    assert_equal :USD, money.code
    assert_equal 43, money.amount
  end
end
