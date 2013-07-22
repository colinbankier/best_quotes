
class QuotesController < Rulers::Controller
	def a_quote
		@variable = "Give me some fish!"
		render :a_quote, :noun => :winking
	end
end