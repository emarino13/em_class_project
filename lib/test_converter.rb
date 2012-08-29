################################################################################
require('test/unit')
require('converter')

################################################################################
class TestConverter<Test::Unit::TestCase

  ##############################################################################
  def test_converter
    temp = Converter.new

    assert_equal((93.2), temp.celsius(34))
    assert_equal((-15), temp.fahrenheit(5))
  end
end


