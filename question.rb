class Question 
  def initialize(num1, num2)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def question 
    "What is #{@num1} + #{@num2}?"
  end

  def answer_correct?(answer)
    answer = @num1 + @num2
  end
  
end

# checked if string outputs correctly with two random #'s
# q = Question.new(@num1, @num2)
# puts q.question