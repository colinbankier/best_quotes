
class QuotesController < Rulers::Controller
	def a_quote
		@variable = "Give me some fish!"
		render :a_quote, :noun => :winking
	end

	def quote_1
		quote_1 = FileModel.find(1)
		render :quote, :obj => quote_1
	end

	def index
		quotes = FileModel.all
		render :index, :quotes => quotes
	end

	def show
		quote = FileModel.find(params["id"])
		render_response :quote, :obj => quote
	end

	def new_quote
		attrs = {
			"submitter" => "web user",
			"quote" => "A picture is worth a thousand pixels",
			"attribution" => "Me"
		}
		m = FileModel.create attrs
		render :quote, :obj => m
	end

	def update_quote
		attrs = {
			"quote" => "An updated quote is worth a thousand quotes #{DateTime.now}"
		}
		quote = FileModel.find(1)
		quote.update(attrs)
		quote.save!
		render :quote, :obj => quote
	end
end		
