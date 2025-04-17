class TransactionsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  
    def index
      @transactions = current_user.transactions
    end
  
    def show
      # @transaction is already set by set_transaction before_action
    end
  
    def new
      @transaction = Transaction.new
    end
  
    def create
      @transaction = current_user.transactions.new(transaction_params)
      if @transaction.save
        redirect_to transactions_path, notice: "Transaction successfully created."
      else
        render :new
      end
    end
  
    def edit
      # @transaction is already set by set_transaction before_action
    end
  
    def update
      if @transaction.update(transaction_params)
        redirect_to transactions_path, notice: "Transaction successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      @transaction.destroy
      redirect_to transactions_path, notice: "Transaction successfully deleted."
    end
  
    private
  
    def set_transaction
      @transaction = current_user.transactions.find(params[:id])
    end
  
    def transaction_params
      params.require(:transaction).permit(:name, :description, :amount, :date, :category)
    end
  end
  