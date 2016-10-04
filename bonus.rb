module HelperMethods
def titleize(str)
  if str.is_a?String
      titleize(str.split(" "))
  elsif str.is_a?Array
    if str.length == 1
      (str[0]=="in" || str[0]=="the" || str[0]=="of" || str[0]=="and" || str[0]=="or" || str[0]=="from")? str[0] : str[0].capitalize
    else
      (str[0]=="in" || str[0]=="the" || str[0]=="of" || str[0]=="and" || str[0]=="or" || str[0]=="from")? str[0]+" "+titleize(str[1..-1]) : str[0].capitalize+" "+titleize(str[1..-1])
    end
  end

end
end

include HelperMethods
puts titleize("hello in the world")
