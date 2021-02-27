$i = 1

def battle
    myChoice = gets.chomp.to_s
    opponentChoice = rand(0..2).to_s
    
    def strategy1(myChoice1) 
        if myChoice1 == "0"
            puts "あなた：グーを出しました"
        elsif myChoice1 == "1"
            puts "あなた：チョキを出しました"
        elsif myChoice1 == "2"
            puts "あなた：パーを出しました"
        else
            puts "戦いません"
            sleep
        end
    end
    
    def opponentStrategy1(opponentChoice1)
        if opponentChoice1 == "0"
            puts "相手：グーを出しました"
        elsif opponentChoice1 == "1"
            puts "相手：チョキを出しました"
        elsif opponentChoice1 == "2"
            puts "相手：パーを出しました"
        end
    end
    
    if $i == 1
        puts "ホイ！"
    else
        puts "ショ！"
    end
    
    puts "------------------------"
    strategy1(myChoice)
    opponentStrategy1(opponentChoice)
    puts "------------------------"
    
    if myChoice == opponentChoice
        puts "あいこで..."
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        $i += 1
        battle
    end
end

def strategy2(choice)
    if choice == "0"
            puts "あなた：上"
        elsif choice == "1"
            puts "あなた：下"
        elsif choice == "2"
            puts "あなた：左"
        elsif choice == "3"
            puts "あなた：右"
        else
            puts "戦いません"
    end
end

def opponentStrategy2
    opponentChoice2 = rand(0..3).to_s
    if opponentChoice2 == "0"
        puts "相手：上"
    elsif opponentChoice2 == "1"
        puts "相手：下"
    elsif opponentChoice2 == "2"
        puts "相手：左"
    elsif opponentChoice2 == "3"
        puts "相手：右"
    end
end

loop do
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    battle
    
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    myChoice2 = gets.chomp
    puts "ホイ！"
    puts "------------------------"
    
    strategy2(myChoice2)
    opponentStrategy2
end