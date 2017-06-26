class WishlistController < ApplicationController
  before_action :authenticate_user!

  def index
    @wished_items = current_user.wished_items
    #@wished_items = current_user.wishes
  end

  def truncate(string, length = 30)
  string.size > length+5 ? [string[0,length],string[-5,5]].join("...") : string
  end

end
