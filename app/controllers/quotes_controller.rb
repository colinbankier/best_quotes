
class QuotesController < Rulers::Controller
	def a_quote
		"There is nothing like a quote: #{ [1, 2, 3, 4, 5, 6].sum }"
	end
end