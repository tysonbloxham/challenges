require 'colorize'
require 'colorized_string'

@numbers = ["0", "00", "1 red", "2 black", "3 red", "4 black", "5 red", "6 black", "7 red", "8 black", "9 red", "10 black", "11 black", "12 red", "13 black", "14 red", "15 black", "16 red", "17 black", "18 red", "19 red", "20 black", "21 red", "22 black", "23 red", "24 black", "25 red", "26 black", "27 red", "28 black", "29 black", "30 red", "31 black", "32 red", "33 black", "34 red", "35 black", "36 red"]

@wallet = 1000


def game
    system "clear"
    puts "Place your bets."
    sleep(0.5)
    puts "You can bet on a number, red or black, or even or odd. Or type $ if you want to cash out."
    sleep(0.5)

    bets = gets.chomp
    if bets == ""
        puts "Make a bet dummy!"
        game
    elsif bets == "$"
        puts "You won $#{@wallet}!!! Peace out!".green.underline
        return
    elsif (bets.length <= 2 && bets.to_i <= 36) ||
                 bets == "red" || 
                 bets == "black" || 
                 bets == "odd" || 
                 bets == "even" || 
                 bets == "first 12" || 
                 bets == "second 12" || 
                 bets == "third 12"
    else
        puts "That's not valid."
        game        
    end
        
    puts "How much chedda you throwin' brah?"
    wager = gets.chomp.to_i
    if wager > @wallet
        puts "You're too poor for that."
        game
    elsif wager == 0
        puts "That's not a valid wager."
        game
    end

            
    @wallet -= wager

    winner = @numbers.sample
    

    if winner.split(" ")[0].include?(bets)
        sleep(2)
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 35)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    elsif winner.split(" ")[1].include?(bets)
        sleep(2)
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 2)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    elsif winner.to_i <= 12 && bets == "first 12"
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 3)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    elsif winner.to_i <= 24 && bets == "second 12"
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 3)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    elsif winner.to_i <= 36 && bets == "third 12"
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 3)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    elsif winner.to_i.even? && bets == "even"
        sleep(2)
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 2)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    elsif winner.to_i.odd? && bets == "odd"
        sleep(2)
        puts "The ball landed on #{winner}."
        puts "You win!!!".cyan.blink
        @wallet += (wager * 2)
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    else
        sleep(2)
        puts "The ball landed on #{winner}."
        losing_conditions
        puts 'Try again loser!!!'.red.blink
        puts "You now have $#{@wallet} remaining.".green
        sleep(3.5)
        game
    end
end

def losing_conditions
    if @wallet <= 0
        puts "You've lost all your money. Farewell.".red
        exit
    else
        return
    end
end

game