puts "じゃんけん..."

def janken
  puts "0（グー）,1（チョキ）,2（パー）,3（戦わない）"
  
  select_hand = gets.to_i
  
  if select_hand == 3
    return false
  elsif select_hand > 3
    puts "0〜3の数字を入力してください"
    puts "じゃんけん..."
    return true
  end
  
  puts "ポン！"
  
  rps = ["グー","チョキ","パー"]
  player_hand = rps[select_hand]
  random_rps = rand(0..2)
  enemy_hand = rps[random_rps]
  
  puts "----------------"
  puts "あなた:#{player_hand}を出しました"
  puts "相手：#{enemy_hand}を出しました"
  puts "----------------"
  
  ##あっち向いてホイ！用の変数
  direction = ["上","下","左","右"] 
  random = rand(0..3)
  
  if (select_hand == 0 && random_rps == 1) || (select_hand == 1 && random_rps == 2) || (select_hand == 2 && random_rps == 0) ##じゃんけん勝ち
    puts "あなたの勝ち！"
    puts "あっちむいて〜"
    puts "0（上）,1（下）,2（左）,3（右）"
    player_direction = gets.to_i
    puts "ホイ！"
    puts "----------------"
    puts "あなた：#{direction[player_direction]}"
    puts "相手：#{direction[random]}"
    puts "----------------"
    
    if player_direction == random
      puts "あなたの勝ちです！おめでとう！！"
      return false
    else
      puts "じゃんけん..."
      return true
    end  
    
  elsif select_hand == random_rps ##じゃんけんあいこ
    puts "あいこで..."
    return true
    
  else ##じゃんけん負け
    puts "あなたの負け！"
    puts "あっちむいて〜"
    puts "0（上）,1（下）,2（左）,3（右）"
    player_direction = gets.to_i
    puts "ホイ！"
    puts "----------------"
    puts "あなた：#{direction[player_direction]}"
    puts "相手：#{direction[random]}"
    puts "----------------"
    
    if player_direction == random
      puts "あなたの負けです"
      return false
    else
      puts "じゃんけん..."
      return true
    end 
  end
end

next_janken = true

while next_janken
  next_janken = janken
end

puts "終了します"