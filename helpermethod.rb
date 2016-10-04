module HelperMethods
def titleize(str)
  nstr = str.split(" ")
  # puts nstr.length
  # p nstr
  for i in 0..nstr.length-1
    if nstr[i.to_i]=="in" || nstr[i.to_i]=="the" || nstr[i.to_i]=="of" || nstr[i.to_i]=="and" || nstr[i.to_i]=="or" || nstr[i.to_i]=="from"
      nstr[i.to_i]
    else
      nstr[i.to_i] = nstr[i.to_i].capitalize
    end
  end
  return nstr.join(" ")
end
end
# 
# include HelperMethods
#  puts titleize("asdfafsd rfuihi of sadufhasud")


# titl= HelperMethods.new()
# class Title
# include HelperMethods
# def captitle(str)
#   puts titleize(str)
# end
# end
#
# tit = Title.new
# tit.captitle("hello in the world")
