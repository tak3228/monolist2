class RankingController < ApplicationController
	
	
	def have
		@ids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:Item_id).to_a
		#@ids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:Item_id).keys
		@items = []
		@ids.each do |id|
			@items << Item.find(id[0])
			# @items << item.find(id)
		end
		
# 	@items = @id.map do |id|
# 	   Item.find(id)
# 	end		
	end



	def want
		
	end
end
