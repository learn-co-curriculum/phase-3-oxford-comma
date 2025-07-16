def oxford_comma(array)
  def add_and(arr) 
    last_item = arr[-1]
    sliced_arr = arr.slice(0, arr.length - 1)
    new_arr = [*sliced_arr, "and #{last_item}"] 
  end
  
  if array.length == 1 
    array[0]
  elsif array.length == 2
    new_arr = add_and(array) 
    new_arr.join(" ")
  else 
    new_arr = add_and(array) 
    new_arr.join(", ")
  end
end
