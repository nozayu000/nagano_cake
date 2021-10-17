class Order < ApplicationRecord
  enum payment_method: { credit_card: 0, transfer: 1  }
  # enum status: { 0: 入金待ち, 1:入金確認, 2: 製作中, 3: 発送準備中, 4: 発送済み }
end