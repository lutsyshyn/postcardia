class PostcardsController < ApplicationController
  before_action :set_postcard, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @postcards = user ? user.postcards : Postcard.all
    respond_with(@postcards)
  end

  def show
    respond_with(@postcard)
  end

  def new
    @postcard = Postcard.generate(user: current_user)
    redirect_to(@postcard)
  end

  def edit
  end

  def update
    @postcard.update(postcard_params)
    respond_with(@postcard)
  end

  def destroy
    @postcard.destroy
    respond_with(@postcard)
  end

  private
    def set_postcard
      @postcard = Postcard.find(params[:id])
    end

    def postcard_params
      params.require(:postcard).permit(:user_id, :recepient_id, :identifier)
    end
    
    def user
      User.find_by_id(params[:user_id])
    end
end
