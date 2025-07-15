# lol
# def oxford_comma(array)
#   if array.length > 2
#     array.last[0, 0] = 'and '
#     array.join(', ')
#   elsif array.length == 2
#     array.last[0, 0] = ' and '
#     array.join
#   else
#     array.join
#   end
# end

def oxford_comma(array)
  case array.length
  when 0..1
    array.join
  when 2
    array.join(' and ')
  else
    "#{array[0..-2].join(', ')}, and #{array[-1]}"
  end
end
