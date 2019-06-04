require 'pry'

def my_find(collection)
  i = 0

  while i < collection.length
    found = yield(collection[i])
    i += 1
    return collection[i] if found
  end
end

my_find( (1..100).to_a ) {|i| i % 3 == 0 and i % 5 == 0 }