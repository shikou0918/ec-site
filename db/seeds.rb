# db/seeds.rb

# create!は作成に失敗した時に例外を発生させて処理を止めてくれる。
20.times do
  Product.create!(
    name: Faker::Book.title,
    description: Faker::Lorem.paragraph(2),
    price: Faker::Number.within(100..100000),
    unit: %w(yen usd).sample # 追加
  )
end