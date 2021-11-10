class Customers::OrdersController < ApplicationController
	before_action :authenticate_customer!
	#注文情報入力画面
	def new
	    @customer = current_customer
	    @order = Order.new
	end
	#注文情報確認画面
	def comfirm
	  	customer = current_customer
	  	# @order = Order.new
	  	@cart_items = customer.cart_items
	  	session[:order] = Order.new
		# 送料
		session[:order][:shopping_cost] = 800
		# 小計（商品合計）
		total = @cart_items.sum{|cart_item|cart_item.item.price_without_tax * cart_item.amount * 1.1 }.floor
		# 請求額
		session[:order][:total_payment] = total + session[:order][:shopping_cost]
		session[:order][:order_status] = 0
		session[:order][:customer_id] = customer.id
		# ラジオボタンで選択された支払方法のenum番号を渡してい
		session[:order][:payment_method] = params[:order][:payment_method]

		# ご自身の住所が選択された時
		if params[:order][:a_method] == "0"

			session[:order][:postal_code] = customer.postal_code
			session[:order][:address] = customer.address
			session[:order][:name] = customer.last_name + " " + customer.first_name

		# 登録済住所が選択された時
		elsif params[:order][:a_method] == "1"

			address = Address.find(params[:order][:dear_address])
			session[:order][:postal_code] = address.postal_code
			session[:order][:address] = address.address
			session[:order][:name] = address.name

		# 新しいお届け先が選択された時
		elsif params[:order][:a_method] == "2"

			session[:order][:postal_code] = params[:order][:postal_code]
			session[:order][:address] = params[:order][:address]
			session[:order][:name] = params[:order][:name]

		end

	end

	#注文完了画面の前の処理
	def create
		order = Order.new(session[:order])
		order.save
		# 以下、order_detail作成
		cart_items = current_customer.cart_items

		cart_items.each do |cart_item|
			order_detail = OrderDetail.new
			order_detail.order_id = order.id
			order_detail.item_id = cart_item.item.id
			order_detail.amount = cart_item.amount
			order_detail.making_status = 0
			order_detail.price = (cart_item.item.price_without_tax * 1.1).floor
			order_detail.save
		end
		# 購入後はカート内商品削除
		cart_items.destroy_all
		redirect_to customers_orders_complete_path
	end

	def complete
	end

	def index
		@orders = current_customer.orders
	end

	def show
		@order = Order.find(params[:id])
		@order_details = @order.order_details
	end


	private
	    def order_params
	        params.require(:order).permit(:customer_id, :shopping_cost, :total_payment, :payment_method, :order_status, :postal_code, :address, :name)
	    end

end