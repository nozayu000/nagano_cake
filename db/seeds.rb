# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'test@test.com',
   password: 'testtest'
)


Genre.create!(
   name: "ケーキ",
   is_genres_status: true
)

Genre.create!(
   name: "プリン",
   is_genres_status: true
)

Genre.create!(
   name: "焼き菓子",
   is_genres_status: true
)

Genre.create!(
   name: "キャンディ",
   is_genres_status: true
)


Item.create!(
    name: "洋梨のチーズタルト",
    genre_id: 1,
    introduction: "洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！洋梨タルト！",
    price_without_tax: 1200,
    image: open("./app/assets/images/pear tart.jpg")
   )

Item.create!(
    name: "ザッハトルテ",
    genre_id: 1,
    introduction: "濃厚なチョコレートのグラサージュに、旨味を引き立てるジャムや生地の風味が三位一体となって絶妙なハーモニーを奏でるザッハトルテ（ザッハートルテ）",
    price_without_tax: 2900,
    image: open("./app/assets/images/fSachertorte.jpg")
   )

Item.create!(
    name: "モンブラン",
    genre_id: 1,
    introduction: "絞りたてのモンブランは空気を沢山含ませることができるため食感が重たい栗も軽い食感になり、また何よりも和栗本来の風味を味わえるのが魅力。",
    price_without_tax: 500,
    image: open("./app/assets/images/montblanc.jpg")
   )

Item.create!(
    name: "卵たっぷり濃厚プリン",
    genre_id: 2,
    introduction: "日本三大地鶏の一つ「名古屋コーチン」の卵を100％使用した濃厚なぷりん。卵が持つ本来の甘みが感じられる生地と、それを生かすカラメルのほろ苦さが相性抜群でプリンの常識を覆します！",
    price_without_tax: 500,
    image: open("./app/assets/images/pudding.jpg")
   )

Item.create!(
    name: "紅茶のクッキー",
    genre_id: 3,
    introduction: "北海道産のバターと国産小麦をベースにアッサムの茶葉を練り込んだ、ほろほろとした食感が特徴のクッキーです。",
    price_without_tax: 800,
    image: open("./app/assets/images/tea cookie.jp")
   )

Item.create!(
    name: "フルーツタルト",
    genre_id: 1,
    introduction: "イチゴをはじめ数種のベリーやぶどうなど、甘酸っぱいフルーツをたっぷりと飾った華やかなタルトです。",
    price_without_tax: 2900,
    image: open("./app/assets/images/fruitstart.jpg")
   )

Item.create!(
    name: "かぼちゃのプリン",
    genre_id: 2,
    introduction: "かぼちゃをたっぷり使った、当店人気NO.1スイーツ、濃厚絶品かぼちゃプリン！！",
    price_without_tax: 480,
    image: open("./app/assets/images/pumpkinpudding.jp")
   )

Item.create!(
    name: "マカロンセット（８個）",
    genre_id: 3,
    introduction: "ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット8個入り」",
    price_without_tax: 1200,
    image: open("./app/assets/images/macaron８.jpg")
   )

Item.create!(
    name: "マカロンセット（１６個）",
    genre_id: 5,
    introduction: "ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」ギフトにはもちろん、自分へのご褒美にもぴったりなのは「マカロンセット１６個入り」",
    price_without_tax: 2000,
    image: open("./app/assets/images/macaron16.jpg")
   )


Item.create!(
    name: "バナナケーキ",
    genre_id: 1,
    introduction: "バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！バナナケーキ！",
    price_without_tax: 980,
    image: open("./app/assets/images/bananascake.jpg")
   )


Item.create!(
    name: "いちごのショートケーキ（ホール）",
    genre_id: 1,
    introduction: "栃木県産のとちおとめを贅沢に使用しています。",
    price_without_tax: 2500,
    image: open("./app/assets/images/strawberryshortcake.jpg")
   )


Item.create!(
    name: "チーズタルト（ピース）",
    genre_id: 1,
    introduction: "チーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルトチーズタルト",
    price_without_tax: 300,
    image: open("./app/assets/images/cheesetart.jpg")
   )

Item.create!(
    name: "チョコバナナミルフィーユ",
    genre_id: 1,
    introduction: "チョコバナナミルフィーユチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィーチョコバナナミルフィー",
    price_without_tax: 1000,
    image: open("./app/assets/images/chocobananamil.jpg")
   )
   
Item.create!(
    name: "ガトーショコラ",
    genre_id: 1,
    introduction: "ガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラガトーショコラ",
    price_without_tax: 500,
    image: open("./app/assets/images/chocolat.jpg")
   )