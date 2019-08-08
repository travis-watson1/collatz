
def collatz(n)
    sum = n
    sequence_length = 1

    while sum != 1 do
        if sum.even?
            sum = sum/2
            sequence_length += 1
        else
            sum = 3 * sum + 1
            sequence_length += 1
        end
    end
    puts "The sequence length is: " + sequence_length.to_s
end

collatz(7)