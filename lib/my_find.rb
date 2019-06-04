

def my_find(collection)
  i = 0
  while i < collection.length
    found = yield(collection[i])
    return collection[i] if found == true
    i += 1
  end
end