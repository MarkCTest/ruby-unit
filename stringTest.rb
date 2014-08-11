require 'test/unit'

puts "Unit Tests for Ruby 1.9.3"
# http://ruby-doc.org/stdlib-1.9.3/libdoc/test/unit/rdoc/Test/Unit/Assertions.html
puts "Test Suite for STRING class"

class StringTest < Test::Unit::TestCase
  
  # Public Class Methods
  
  def test_new
    a = "Banana"
      assert_equal("Banana", a)
    String.new(a="Apple")
      assert_not_equal("Banana", a)   
  end
  
  def test_tryConvert
    a = "Banana"
      assert_not_nil(String.try_convert(a),nil)

    b = 1
      assert_equal(String.try_convert(b),nil)
  end
  
  # Public Instance Methods
  
  def test_str_mulitplySymbol_integer
     a = "Banana "
      assert_equal("Banana Banana ", a*2)
      assert_raise ArgumentError do
          a*-1
        end
      assert_not_equal("Banana", a*0)
  end
  
  def test_capitalize
    s = "banana"
      assert_equal("Banana", s.capitalize)
      assert_not_equal("BANANA", s.capitalize)    
  end 
  
  def test_chomp
    s = "Bananas\n"
      assert_equal("Bananas", s.chomp)
      assert_not_equal("Bananas\n", s.chomp)
  end
  
  def test_downcase
    s = "BANANA"
      assert_equal("banana", s.downcase)
      assert_not_equal("Banana", s.downcase)
  end
 
  def test_length
    s = "Hello World!"
      assert_equal(12, s.length)
      assert_not_equal(s.length+1, s.length)
  end
  
  def test_upcase
    s = "banana"
      assert_equal("BANANA", s.upcase)
      assert_not_equal("Banana", s.upcase)
  end
  

  
# where does this belong?
  def test_interpolation
    a = "World!"
      assert_equal("Hello World!", "Hello #{a}")
      assert_not_equal("Hello", "Hello #{a}")
  end
    
end
