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
            exit
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

    def judge(m, o)
        case
        when m == "0" && o == "1"
            $winner = "あなた"
            $looser = "相手"
        when m == "1" && o == "2"
            $winner = "あなた"
            $looser = "相手"
        when m == "2" && o == "0"
            $winner = "あなた"
            $looser = "相手"
        when o == "0" && m == "1"
            $winner = "相手"
            $looser = "あなた"
        when o == "1" && m == "2"
            $winner = "相手"
            $looser = "あなた"
        when o == "2" && m == "0"
            $winner = "相手"
            $looser = "あなた"
        when m == o
            $winner = 0
            $looser = 0
        end
    end

    judge(myChoice, opponentChoice)
    unless $winner == $looser
        puts "じゃんけんの勝ち:#{$winner}"
        puts "じゃんけんの負け:#{$looser}"
        puts "------------------------"
    end

    if myChoice == opponentChoice
        puts "あいこで..."
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        $i += 1
        battle
    end
end
def battle2
    def strategy2(myChoice2)
        if myChoice2 == "0"
                puts "あなた：上"
            elsif myChoice2 == "1"
                puts "あなた：下"
            elsif myChoice2 == "2"
                puts "あなた：左"
            elsif myChoice2 == "3"
                puts "あなた：右"
            else
                puts "戦いません"
        end
    end

    def opponentStrategy2(opponentChoice2)
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

    myChoice2 = gets.chomp
    opponentChoice2 = rand(0..3).to_s
    puts "ホイ！"
    puts "------------------------"

    strategy2(myChoice2)
    opponentStrategy2(opponentChoice2)

    if $winner == "あなた" && myChoice2 == opponentChoice2
        puts "あなたの勝ちです"
        puts "------------------------"
    elsif $looser == "あなた" && myChoice2 == opponentChoice2
        puts "あなたの負けです"
        puts "------------------------"
    else
        puts "じゃんけんからやり直し"
        puts "------------------------"
    end
end

loop do
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    battle
    
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    battle2
end