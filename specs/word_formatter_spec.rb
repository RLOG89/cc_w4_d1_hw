require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/word_formatter'

class TestWordFormatter < MiniTest::Test

  def setup
    @word_formatter = WordFormatter.new("hello world")
  end

  def test_upcase_postcode
  assert_equal("HELLO WORLD", @word_formatter.text_upcase)
  end

  def test_camel_case
  assert_equal("HelloWorld", @word_formatter.camel_case)
  end
end