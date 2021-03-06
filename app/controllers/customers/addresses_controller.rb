class Customers::AddressesController < ApplicationController
  before_action :authenticate_customer!

    # 配送先一覧/配送先登録画面
    def index
        @address = Address.new
        @addresses = current_customer.addresses
    end
    # 配送先登録ボタン
    def create
        @address = Address.new(address_params)
        @address.customer_id = current_customer.id
        @address.save
        if @address.update(address_params)
            redirect_to customers_addresses_path
            flash[:address] = "登録しました。"
        else
            render customers_addresses_path
        end
    end
    # 配送先編集ボタン
    def edit
        @address = Address.find(params[:id])
    end
    # 配送先編集保存ボタン
    def update
        address = Address.find(params[:id])
        address.update(address_params)
        redirect_to customers_addresses_path
        flash[:address] = "編集しました。"
    end

    # 配送先を削除する
    def destroy
        address = Address.find(params[:id])
        address.destroy
        redirect_to customers_addresses_path
        flash[:address] = "削除しました。"
    end





    private
    def address_params
        params.require(:address).permit(:customer_id, :name, :postal_code, :address)
    end




end
