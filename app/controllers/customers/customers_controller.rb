class Customers::CustomersController < ApplicationController
  before_action :authenticate_customer!

    # マイページへのアクション
    def show
        @customer = current_customer
    end
    # 登録情報編集へのアクション
    def edit
        @customer = current_customer
    end
    # 登録情報の編集を保存するアクション
    def update
        @customer = current_customer
        if @customer.update(customer_params)
        else
            render 'edit'
        end
    end
    # 登録情報編集画面から退会ページを表示するアクション
    def unsubscribe
    end
    # 退会アクション
    def withdraw
        @customer = current_customer
        
        # is_customer_statusカラムにフラグを立てる(default→false(有効状態)をtrue(無効状態)にする）
        @customer.update(is_deleted: true)
        # ログアウトさせる
        reset_session

        flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
        redirect_to root_path
    end

    private
        def customer_params
            params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :is_deleted)
        end
end
