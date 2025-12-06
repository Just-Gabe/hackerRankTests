# This is a wonderful exercise which explains the concept of infinite loops.
#
# "A hacker practices on HackerRank until getting to a rating of O(1) read as (Oh-one)"
#
# An infinite loop in Ruby is of the form 
#
# loop do
# end
#
# Use an infinite loop and call the method coder.practice within it and break if coder.oh_one? is true.
#
# break if conditions in Ruby are of the form 

# if <condition>
#     break
# end

class Coder

    def initialize(limit)
        @o_1 = false
        @counter = 0
        @limit = limit
    end

    def practice
        @counter = @counter + 1
        if @limit == @counter
            @o_1 = true
        end

        unless oh_one?
            puts "still not O(1)"
        else
            puts "finally O(1)"
        end
    end

    def oh_one?
        @o_1 == true
    end
end

def infinite_loop
    hr_counter = gets.to_i
    coder = Coder.new(hr_counter)
    loop do
      coder.practice
      if coder.oh_one? == true
        break
      end
      
    end
end

infinite_loop

