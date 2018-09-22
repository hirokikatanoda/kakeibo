class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  def index
    @accounts = Account.all
  end

  def edit_show
    @account = Account.all
  end

  def new
    @account = Account.new
  end

  def edit
    @account = Account.find(params[:id])
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to accounts_path, success: '支出を編集しました'
    else
      redirect_to edit_account_path, danger: '支出の編集に失敗しました'
    end
  end

  def update
    @accoount = Account.find(params[:id])

    if @account.update(account_params)
      redirect_to accounts_path, success: '支出を編集しました'
    else
      redirect_to edit_account_path, danger: '支出の編集に失敗しました'
    end
  end

  def delete_show
    @account = Account.find(params[:id])
  end

  def destroy
    @account = Account.find(params[:id])

    if @account.destroy
      redirect_to accounts_path, success: '支出を削除しました'
    else
      redirect_to new_account_path, danger: '支出の削除に失敗しました'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:name, :price)
    end
end
