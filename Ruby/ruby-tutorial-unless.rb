# You've updated the score of every HackerRank user who participated in a contest. 
# Sometimes, HackerRank admins also participate in a given contest but care is taken to ensure that their submissions do not get any score and their score is not updated.

# Like the previous challenge, you are given a method scoring with an array passed as an argument. Each element of the array is of class User.
# User has two public methods, is_admin? and update_score. 
# Your task in this challenge is to use the control structure unless and update all elements of the array who are not admins. 


class User
    attr_accessor :score, :init_score
    def initialize(score, admin)
        @score = score
        @admin = admin
        @init_score = score
    end

    def update_score
        @score += 1
    end

    def to_s
        "Score: 
Admin "
    end

    def is_admin?
        @admin
    end
end

arr = (0...gets.to_i).map do |i|
    x = gets.to_i == 1 ? true : false
    User.new(Random.rand(10), x)
end

def scoring(array)
  # update_score of every user in the array unless the user is admin
  array.each do |user|
    user.update_score unless user.is_admin?
  end
end

scoring(arr)

arr.each do |a|
    if a.is_admin?
        if a.score == a.init_score
            puts "Score not updated as the user is admin"
        else
            puts "Score is updated for admin. Wrong!!"
        end
    else
        if a.score == (a.init_score + 1)
            puts "Score updated for non-admin!"
        else
            puts "Score not updated for non-admin. Wrong!!"
        end
    end
end

