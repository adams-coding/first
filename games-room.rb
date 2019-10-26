ready_player_one = true

while ready_player_one == true

puts "Welcome to the games room!!" 
sleep(1)
puts "Type the game number:"
sleep(0.5)
puts " 1 Loopy Timer "
puts " 2 Not Quite Yahtzee "
puts " 3 Guess Again "
game_choice =gets.chomp.to_i
puts " \n **************************** \n"

    if game_choice ==1

        #add code for timer here
        number = 10
        while number >= 0 
            puts "#{number}"
            number -= 1
            sleep(1)
        end
        puts "DING DING DING!!"    
        

            elsif game_choice == 2 
                #dice
                auto_gambling = true
                while auto_gambling != false do
                
                    roll1 =1 + rand(6)
                    roll2 =1 + rand(6)
                    sleep (0.2)
                    puts "Rolling... \n"
                    sleep (0.5)
                    puts "#{roll1}"
                    sleep (0.5)
                    puts "#{roll2}"
                
                    if roll1 == 1 && roll2 == 1 
                        puts "Snake Eyes!!"
                        auto_gambling = false
                
                    elsif roll1 == roll2
                        puts "Yahtzee!!!"
                        auto_gambling = false
                
                    elsif roll1 + roll2 == 7
                        puts "Congratulations you win"
                        auto_gambling = false
                    
                    else
                        auto_gambling = true
                        puts "Rolling again"
                        sleep(1) 
                        
                    end
                   
                    
                end


            elsif game_choice == 3 

                #guess again

                my_number = rand(1..10)
                im_a_loser = true
                3.times do
                puts "Guess my number between 1 and 10?"
                users_guess = gets.chomp
                compare_answer = users_guess.to_i <=> my_number
                case compare_answer
                when 1
                    puts "Too high"
                when 0
                    puts "You got it"
                    im_a_loser = false
                    break
                else
                    puts "Too low"
                end
                end


                if im_a_loser == true
                puts "What a LOSER!! My number was #{my_number} GAME OVER"
                else
                    puts "You're the best!!"
                
                end

            else
        
        
    end

    puts " \n **************************** \n"
    puts "Play another game? y/n"
        ready = gets.chomp.to_s
        if ready == "y"
            ready_player_one = true

        else
            puts "come back and play again soon"
            ready_player_one = false
end
end

