class RankingController < ApplicationController
  def want
    @want = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  end
  
  def have
    @have = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  end
end