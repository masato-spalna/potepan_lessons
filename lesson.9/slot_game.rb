def slot_game

  current_coin = 500

  current_point = 0

  bet_coin = [10,30,50]

  

  next_game = true

  

  while next_game

    puts "残りのコイン数：#{current_coin}"

    puts "現在のポイント：#{current_point}"

    puts "何コイン入れますか？"

    puts "[0]10コイン、[1]30コイン、[2]50コイン、[3]やめとく"

    

    select_coin = gets.to_i

    if select_coin == 3

      break

    elsif select_coin != 0 && select_coin != 1 && select_coin != 2

      puts "0〜3のいずれかを入力してください"

      next

    end

    

    current_coin -= bet_coin[select_coin]

    

    if current_coin < 0

      puts "コインが足りません！"

      break

    end

    

    num1 = rand(1..5)

    num2 = rand(1..5)

    num3 = rand(1..5)

    num4 = rand(1..5)

    num5 = rand(1..5)

    num6 = rand(1..5)

    num7 = rand(1..5)

    num8 = rand(1..5)

    num9 = rand(1..5)

    

    puts "#{bet_coin[select_coin]}コインベットされました"

    puts "エンターを3回押しましょう！"

    

    enter = gets

    

    puts "-----------------"

    puts "|#{num1}|||"

    puts "|#{num2}|||"

    puts "|#{num3}|||"

    puts "-----------------"

    

    enter = gets

    

    puts "-----------------"

    puts "|#{num1}|#{num4}||"

    puts "|#{num2}|#{num5}||"

    puts "|#{num3}|#{num6}||"

    puts "-----------------"

    

    enter = gets

    

    puts "-----------------"

    puts "|#{num1}|#{num4}|#{num7}|"

    puts "|#{num2}|#{num5}|#{num8}|"

    puts "|#{num3}|#{num6}|#{num9}|"

    puts "-----------------"

    

    get_coin = bet_coin[select_coin] * 2

    get_point = bet_coin[select_coin] * 5

    

    if num1 == num4 && num4 == num7

      current_coin += get_coin

      current_point += get_point

      puts "上一列に#{num1}が揃いました"

      puts "#{get_point}ポイント獲得！"

      puts "#{get_coin}コイン獲得！"

      puts "-------------------"

    elsif num2 == num5 && num5 == num8

      current_coin += get_coin

      current_point += get_point

      puts "真ん中一列に#{num2}が揃いました"

      puts "#{get_point}ポイント獲得！"

      puts "#{get_coin}コイン獲得！"

      puts "-------------------"

    elsif num3 == num6 && num6 == num9

      current_coin += get_coin

      current_point += get_point

      puts "下一列に#{num3}が揃いました"

      puts "#{get_point}ポイント獲得！"

      puts "#{get_coin}コイン獲得！"

      puts "-------------------"

    elsif (num1 == num5 && num5 == num9) || (num3 == num5 && num5 == num7)

      current_coin += get_coin

      current_point += get_point

      puts "斜め一列に#{num5}が揃いました"

      puts "#{get_point}ポイント獲得！"

      puts "#{get_coin}コイン獲得！"

      puts "-------------------"

    else

      puts "残念！ハズレです！"

      puts "-------------------"

    end

  end

  

  puts "またチャレンジしてね！"

end



slot_game
 