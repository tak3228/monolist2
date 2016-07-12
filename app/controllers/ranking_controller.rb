class RankingController < ApplicationController
	
	
	def have
		@ids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:Item_id).to_a
		@items = []
		@ids.each do |id|
			@items << Item.find(id[0])
		end
		
	end



	def want
		
	end
end
