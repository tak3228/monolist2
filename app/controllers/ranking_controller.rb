class RankingController < ApplicationController
	
	
	def have
		Have.group(:item_id).order(:item_id).limit(10).count(:Item_id :desc)
	end



	def want
		
	end
end
