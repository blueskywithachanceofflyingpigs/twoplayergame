def ran_num_gen
  @num1 = rand(1..20)
  @num2 = rand(1..20)
end

def game
  go_on = true
  @p1life = 3
  @p2life = 3
  @points1 = 0
  @points2 = 0
  
  while go_on do
    ran_num_gen
    puts "Player 1: What does #{@num1} plus #{@num2} equal?"
    p1input = gets.chomp.to_i
    if p1input == @num1 + @num2
      @points1 += 1
      puts "Correct! You have #{@points1} points, smart-ass."
    else
    @p1life -= 1
    puts "WRONG!"
      if @p1life == 0
        puts "Game over! Player 2 WINS!"
        return go_on = false
      end
    end

    ran_num_gen
    puts "Player 2: What does #{@num1} plus #{@num2} equal?"
    p2input = gets.chomp.to_i
    if p2input == @num1 + @num2
      @points2 += 1
      puts "Correct! You have #{@points2} points, smart-ass."
    else
    @p2life -= 1
    puts "WRONG!"
      if @p2life == 0
        puts "Game over! Player 1 WINS!"
        return go_on = false
      end
    end
  end
end

game