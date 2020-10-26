require 'pry'

def hello(array)
  i = 0
  set = []
  while i < array.length
    set << yield(array[i])
    i += 1
  end
  set
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
