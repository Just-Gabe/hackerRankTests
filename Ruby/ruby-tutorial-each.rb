# Ruby offers control structures that let you iterate through its collections. One such control structure is each.
#
# As you already know, HackerRank conducts many contests, and for every user who participates in a contest we update their score once the contest ends. You will be given a method called scoring with an array passed as an argument. Elements of the array are of the class User.
#
# User class has a method update_score.
#
# Your task is to iterate through each of the elements in the array using each and call the method update_score on every element. 

class User
    attr_accessor :score, :init_score
    def initialize(score)
        @score = score
        @init_score = score
    end

    def update_score
        @score += 1
        puts "Score Updated"
    end

    def to_s
        "Score: "
    end
end

arr = (0...gets.to_i).map {|i| User.new(Random.rand(10))}

def scoring(array)
    array.each do |user|
  user.update_score
    end
end


scoring(arr)

arr.each do |a|
    if a.score != (a.init_score + 1)
        puts "Score not updated"
    end
end
