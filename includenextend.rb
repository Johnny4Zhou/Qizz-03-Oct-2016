module Teststring
  def testmethod
    puts "output for testing"
  end
end

class Classinclude
  include Teststring
end

class Classextend
  extend Teststring
end

Classinclude.new.testmethod #testmethod is used as instance method

Classextend.testmethod #testmethod is used as class method
