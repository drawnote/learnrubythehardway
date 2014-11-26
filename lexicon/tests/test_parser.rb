require "./lib/parser/parser.rb"
require "minitest/autorun"

class TestNAME < MiniTest::Unit::TestCase

  def test_sentence()
    assert_raise do
      parse_sentence([['verb', 'run'], ['verb', 'run']])    
    end
  end
  
end