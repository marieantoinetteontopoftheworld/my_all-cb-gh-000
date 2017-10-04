require 'pry'

def my_all?(collection)
  i = 0

  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end

  contains_false = false

  j = 0
  while j < block_return_values.length
    if block_return_values[j] == false
      contains_false = true
    end
    j += 1
  end

  !contains_false
end
