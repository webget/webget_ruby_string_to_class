require 'test/unit'
require 'string_to_class'


class Testing < Test::Unit::TestCase

  def test_to_class
    assert_equal(String,'String'.to_class)
  end

  def test_to_class_nested
    assert_equal(FooModule::FooClass,'FooModule::FooClass'.to_class)
  end

end

module FooModule
  class FooClass
  end
end




