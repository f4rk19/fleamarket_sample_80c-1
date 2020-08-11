class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true


  enum condition: {  新品・未使用: "1", 未使用に近い: "2", 目立った傷や汚れなし: "3", やや傷や汚れあり: "4", 傷や汚れあり: "5", 全体的に状態が悪い: "6" }

  enum delivery_fee: { 送料込み（出品者負担）: "1", 着払い（購入者負担）: "2"}

  enum send_from: {
    北海道: "1",青森県: "2",岩手県: "3",宮城県: "4",秋田県: "5",山形県: "6",福島県: "7",
    茨城県: "8",栃木県: "9",群馬県: "10",埼玉県: "11",千葉県: "12",東京都: "13",神奈川県: "14",
    新潟県: "15",富山県: "16",石川県: "17",福井県: "18",山梨県: "19",長野県: "20",
    岐阜県: "21",静岡県: "22",愛知県: "23",三重県: "24",
    滋賀県: "25",京都府: "26",大阪府: "27",兵庫県: "28",奈良県: "29",和歌山県: "30",
    鳥取県: "31",島根県: "32",岡山県: "33",広島県: "34",山口県: "35",
    徳島県: "36",香川県: "37",愛媛県: "38",高知県: "39",
    福岡県: "40",佐賀県: "41",長崎県: "42",熊本県: "43",大分県: "44",宮崎県: "45",鹿児島県: "46",沖縄県: "47"
  }

  enum delivery_date: { １〜２日で発送: "1", ２〜３日で発送: "2", ４〜７日で発送: "3"}

  validates :name, :content,:price, :condition, :delivery_date, :delivery_fee, :send_from,:category, presence: true
end


# 北海道: "北海道",青森県: "青森県",岩手県: "岩手県",宮城県: "宮城県",秋田県: "秋田県",山形県: "山形県",福島県: "福島県",
#     茨城県: "茨城県",栃木県: "栃木県",群馬県: "群馬県",埼玉県: "埼玉県",千葉県: "千葉県",東京都: "東京都",神奈川県: ",神奈川県",
#     新潟県: "新潟県",富山県: "富山県",石川県: "石川県",福井県: "福井県",山梨県: "山梨県",長野県: "長野県",
#     岐阜県: "岐阜県",静岡県: "静岡県",愛知県: "愛知県",三重県: "三重県",
#     滋賀県: " 滋賀県",京都府: "京都府",大阪府: "大阪府",兵庫県: "兵庫県",奈良県: "奈良県",和歌山県: "和歌山県",
#     鳥取県: "鳥取県",島根県: "島根県",岡山県: "岡山県",広島県: "広島県",山口県: "山口県",
#     徳島県: "徳島県",香川県: "香川県",愛媛県: "愛媛県",高知県: "高知県",
#     福岡県: "福岡県",佐賀県: "佐賀県",長崎県: "長崎県",熊本県: "熊本県",大分県: "大分県",宮崎県: "宮崎県",鹿児島県: "鹿児島県",沖縄県: "沖縄県"

# enum delivery_fee: { 送料込み（出品者負担）: "送料込み（出品者負担）", 着払い（購入者負担）: "着払い（購入者負担）"}