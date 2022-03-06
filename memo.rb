require "csv"

  puts "1(新規でメモを作成) 2(既存のメモ編集する) "
  memo_type = gets.to_i

  if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp

    puts "メモをしたい内容を入力してください"
    puts "完了したら　Ctrl + D を押します"
    memo = STDIN.read

    CSV.open("#{file_name}.csv","w") do |csv|
      csv << ["#{memo}"]
    end
    
  elsif memo_type == 2
      puts "編集するファイル名を入力してください"
      file_name = gets.chomp
      
      puts "編集したい内容を入力してください"
      puts "完了したら　Ctrl + Dを押します"
      memo = STDIN.read
      
      CSV.open("#{file_name}.csv","a") do |csv|
      csv << ["#{memo}"]
    end
      
      
end