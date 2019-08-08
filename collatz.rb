
def collatz(input)
    sequence_length = 1

    while input != 1 do
        if input.even?
            input = input/2
            sequence_length += 1
        else
            input = 3 * input + 1
            sequence_length += 1
        end
    end
    sequence_length
end

def maximum
    max_length = 0
    max_number = 0

    (1..1000000).each do |n|
        length = collatz(n).to_i
        if length > max_length
            max_length = length
            max_number = n
        end
    end
    puts max_number
end

maximum
#collatz(7)