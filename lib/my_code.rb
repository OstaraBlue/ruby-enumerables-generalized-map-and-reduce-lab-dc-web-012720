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
  total = source_array[0]
  counter = 1 
  while counter < source_array.count do 
    total = yield(total, source_array[counter])
    counter += 1 
  end
  total
end
  