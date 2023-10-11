class PicturesController < ApplicationController


 def like
  @picture = Picture.find(params[:id])
  @like = Like.new(user: current_user, picture: @picture)
  
  if @like.save
    redirect_to @picture, notice: 'You liked this picture!'
  else
    redirect_to @picture, alert: 'Failed to like the picture.'
  end
end

def unlike
  @picture = Picture.find(params[:id])
  @like = Like.find_by(user: current_user, picture: @picture)
  
  if @like.destroy
    redirect_to @picture, notice: 'You unliked this picture!'
  else
    redirect_to @picture, alert: 'Failed to unlike the picture.'
  end
end

def show
  @picture = Picture.find(params[:id])
  # ...
end


  
    def index
    @pictures = Picture.all

     respond_to do |format|
      format.html # This line tells Rails to look for an HTML template (index.html.erb).
      format.json { render json: @pictures }
    end
  end
end
