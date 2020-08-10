def bubble_sort(var_array)

  iteration = var_array.length - 1
  while iteration.positive?
    order_flag = true
    (0...iteration).each do |i|
      if var_array[i] > var_array[i + 1]
        order_flag = false
        aux = var_array[i]
        var_array[i] = var_array[i + 1]
        var_array[i + 1] = aux
      else
        next
      end
    end
    order_flag ? break : nil
    iteration -= 1
  end

  var_array
end

def bubble_sort_by(var_array)

  iteration = var_array.length - 1
  while iteration.positive?
    order_flag = true
    (0...iteration).each do |i|
      if yield(var_array[i], var_array[i + 1]).positive?
        order_flag = false
        aux = var_array[i]
        var_array[i] = var_array[i + 1]
        var_array[i + 1] = aux
      else
        next
      end
    end
    order_flag ? break : nil
    iteration -= 1
  end

  var_array
end

numbers = [6, 5, 3, 1, 8, 7, 4, -1, -10, -100]
print bubble_sort(numbers)
print "\n"

string_array = bubble_sort_by(%w(hi hello hey)) do |left, right|
  if left.is_a? String and right.is_a? String
    left.length - right.length
  elsif left.is_a? Numeric and right.is_a? Numeric
    left - right
  end
end

puts string_array
