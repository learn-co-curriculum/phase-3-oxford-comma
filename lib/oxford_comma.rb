def oxford_comma(array)
    last = array.pop() 
    new_str = array.join(", ")
    new_str << "and #{last}"
end