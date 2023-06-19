DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i - 1

  if order_number < 0 || order_number >= menus.length
    puts '無効な番号です。もう一度入力してください。'
    return take_order(menus)
  end

  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  order_number
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
drinks_1 = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
foods_2 = take_order(FOODS)

total = DRINKS[drinks_1][:price].to_i + FOODS[foods_2][:price].to_i
puts "お会計は#{total}円になります。ありがとうございました！"
