class RankingController < ApplicationController
  def ranking
    if logged_in?
      @have_rank = item_haved.order
    　@have_ranking = Post.find(:all,:order => "ranking DESC" )
      @micropost = current_user.microposts.build
      @have_ranking = current_user.feed_items.includes(:user).order(created_at: :desc)
    end
  end
end