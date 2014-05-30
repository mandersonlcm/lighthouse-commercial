class RecentTransactionsController < ApplicationController
  # GET /recent_transactions
  # GET /recent_transactions.json
  def index
    @recent_transactions = RecentTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recent_transactions }
    end
  end

  # GET /recent_transactions/1
  # GET /recent_transactions/1.json
  def show
    @recent_transaction = RecentTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recent_transaction }
    end
  end

  # GET /recent_transactions/new
  # GET /recent_transactions/new.json
  def new
    @recent_transaction = RecentTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recent_transaction }
    end
  end

  # GET /recent_transactions/1/edit
  def edit
    @recent_transaction = RecentTransaction.find(params[:id])
  end

  # POST /recent_transactions
  # POST /recent_transactions.json
  def create
    @recent_transaction = RecentTransaction.new(params[:recent_transaction])

    respond_to do |format|
      if @recent_transaction.save
        format.html { redirect_to @recent_transaction, notice: 'Recent transaction was successfully created.' }
        format.json { render json: @recent_transaction, status: :created, location: @recent_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @recent_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recent_transactions/1
  # PUT /recent_transactions/1.json
  def update
    @recent_transaction = RecentTransaction.find(params[:id])

    respond_to do |format|
      if @recent_transaction.update_attributes(params[:recent_transaction])
        format.html { redirect_to @recent_transaction, notice: 'Recent transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recent_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recent_transactions/1
  # DELETE /recent_transactions/1.json
  def destroy
    @recent_transaction = RecentTransaction.find(params[:id])
    @recent_transaction.destroy

    respond_to do |format|
      format.html { redirect_to recent_transactions_url }
      format.json { head :no_content }
    end
  end
end
