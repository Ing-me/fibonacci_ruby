def fibs(n)
    first_number = 0
    second_number = 1
    fibs_arr = []
    n.times do 
        fibs_arr << first_number
        first_number,second_number = second_number, first_number + second_number
    end
    return fibs_arr
end

def fibs_recursive(n)

    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2 

    fibs_arr = fibs_recursive(n - 1)    

    fibs_arr << fibs_arr[-2] + fibs_arr[-1]

    return fibs_arr
   
end

puts "\n The loop version \n"
p fibs(8)

puts "\n The recursive version \n"
p fibs_recursive(8)
