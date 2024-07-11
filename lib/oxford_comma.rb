
# My original version
def oxford_comma_original(array)
  string = ""
  if array.size == 1
    string = array[0]
  else
    array.each_with_index do |word, index|
      if index == array.length - 1
        string += "and #{word}"
      elsif array.length == 2
        string += "#{word} "
      else
        string += "#{word}, "
      end
    end
  end
  string
end

# ChatGPT's idea
def oxford_comma(array)
  case array.size
  when 0
    ""
  when 1
    array[0]
  when 2
    array.join(" and ")
  else
    "#{array[0..-2].join(', ')}, and #{array[-1]}"
  end
end
