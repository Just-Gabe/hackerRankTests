# A method may take zero or more parameters as input. 
# To demonstrate this, we look at the asserts we use on HackerRank. 
# Sometimes, we have to check whether a given number a is within the range b and c (where b < c, and both inclusive ).

# Three variables a, b, and c are already defined.
# Your task is to write code that checks whether a is within the range of b and c by calling the method range?
# (which we have defined for you as a method for this example) on a and passing b and c as arguments. 

class Fixnum
    def range? a, b
        return self.between? a, b
    end
end

def range_call(a, b, c)

    # write your code here
    a.between?(b,c)

end

(0...gets.to_i).each do |i|
    a, b, c = gets.strip.split(" ").map(&:to_i)
    puts range_call a, b, c
end

