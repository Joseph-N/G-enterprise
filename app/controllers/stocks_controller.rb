class StocksController < ApplicationController
	before_filter :authenticate_admin!

	def index	
	end

	def new
		@stock = Stock.new
		2.times do
			provider = @stock.providers.build
			4.times { provider.denominations.build }
		end
	end

	def create
		@stock = Stock.create(stock_params)
		if @stock.save
			flash[:notice] = "Order was successfully recorded"
			redirect_to stocks_path
		else
			render 'new'
		end
	end

	private

		def stock_params
			params.require(:stock).permit(:name, providers_attributes: [:name, denominations_attributes: [:name, :quantity, :buying_price, :_destroy]])
		end
end
