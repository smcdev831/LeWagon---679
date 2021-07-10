def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  return -1 if min > max

  num = 0
  
  for i in min..max do
    num += i
  end
  return num
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  return -1 if min > max

  num = 0
  i = min

  while i <= max
    num += i
    i += 1
  end
  return num
end
