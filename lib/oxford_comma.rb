def oxford_comma(array)
  return array.join(" and ") if array.size < 3

  # insert 'and ' in front of the last string in the array
  array[-1] = "and #{array[-1]}"

  array.join(", ")  
end
