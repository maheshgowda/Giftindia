module ApplicationHelper
   def rupees_helper(number)
      number = number.to_s
      rs = ""
      number.reverse.chars.each_with_index{|i, index| rs<<i; rs<<"" if index==4; rs<<"," if (index!=number.chars.count-1&&index>3&&index%2==0) }
      rs = rs.reverse
      return "Rs. " + rs
   end
end
