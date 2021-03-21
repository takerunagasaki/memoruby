require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_s


if memo_type == "1" then
  puts "ファイル名称を入力してください※拡張子は要りません"
  file_name = gets.chomp
  puts "書き込みたい内容を入力してください"
  puts "入力が終わったら、ctl+Dを押してください"
  #csv_text = gets
  #csv_text = $stdin.read
  
CSV.open("#{file_name}.csv","w") do |text|
    csv_text = readlines
    text << csv_text
end

elsif memo_type == "2" then
  puts "編集したい既存CSVファイルの名前を入力してください※拡張子は要りません"
  file_name = gets.chomp
  #text_data = CSV.read("#{file_name}.csv")
  #puts text_data
  puts "#{file_name}を編集しています。"
  puts "入力が終わったら、ctl+Dを押してください。"

  CSV.open("#{file_name}.csv","a") do |text|
    csv_text = readlines
    text << csv_text
  end
  
  #memo_text = gets.chomp
else
  puts "1または、2を入力してください"
end