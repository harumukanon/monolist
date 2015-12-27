class Ranking < ActiveRecord::Base
  
  def have_rank
    @have_item = have_items.count(user_id, :desc)
  end
  
  def want_rank
    @want_item = want_items.count(user_id, :desc)
  end
  
end
