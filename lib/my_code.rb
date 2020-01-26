# Your Code Here
def map(source_array)
 result = []
 counter = 0 
 while counter < source_array.count do 
  result[counter] = yield(source_array[counter])
  counter += 1
 end
 result
end


def reduce(source_array, starting_point =0)
  counter = 0 
  total = source_array[counter]
  while counter < source_array.count do
    if source_array.sum 
      total += yield(total, source_array[counter])
      counter += 1 
    else 
      total = yield(total, source_array[counter])
    end
  end
  total
end
  