def bubble_sort(var_array)
  aux=0
  iteration=var_array.length-1
  while iteration>0
    order_flag=true
    for i in 0...iteration do
      if var_array[i]>var_array[i+1]
        order_flag=false
        aux=var_array[i]
        var_array[i]=var_array[i+1]
        var_array[i+1]=aux
      end
    end
    if order_flag
      break
    end
    iteration-=1
  end 
  return var_array
end

numbers=[6,5,3,1,8,7,4,-1,-10,-100]
print bubble_sort(numbers)
print "\n"