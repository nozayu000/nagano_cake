class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items
  has_many :order_details

  attachment :image
  validates :name, presence: true
  validates :introduction, presence: true
  validates :price_without_tax, presence: true

  ## 消費税を求めるメソッド
  def with_tax_price
      (price_without_tax * 1.1).floor
  end
end
