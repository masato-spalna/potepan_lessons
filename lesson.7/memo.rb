require 'csv'

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp + ".csv"
  p "メモしたい内容を記入してください"
  p "完了したらCtrl + Dを押して保存します"
  
  lines = readlines.map(&:chomp)
  
  CSV.open(file_name, "w") do |csv|
    csv << lines
  end
  
elsif memo_type == 2
  puts "編集したいファイル名を拡張子を除いて入力してください"
  file_name = gets.chomp + ".csv"
  p "メモしたい内容を記入してください"
  p "完了したらCtrl + Dを押して保存します"
  
  lines = readlines.map(&:chomp)
  
  CSV.open(file_name, "a") do |csv|
    csv << lines
  end
  
else
  puts "1,2以外が入力されたため終了します。"
  puts "再度ファイルを実行し、1(新規）または2（編集）どちらかの数字を入力してください"
end


# https://qiita.com/Hayate_0807/items/2e9705091b181a104621
# https://www.sejuku.net/blog/15982