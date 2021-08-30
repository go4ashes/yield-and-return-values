require 'pry'

def hello(array)
  i = 0
  ray = []
  while i < array.length
    ray << yield(array[i])
    i += 1
  end
  ray
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }