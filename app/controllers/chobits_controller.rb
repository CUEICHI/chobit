class ChobitsController < ApplicationController
  def index
    @chobits = Chobit.all
    @chobit = Chobit.new
     @you= YoutubeSearch::search('nice boat')
  end

  def create
    chobit = Chobit.new(:msg => params[:chobit][:msg], :fav => false)
    chobit.save
    redirect_to :action => 'index'
  end

  def destroy
    chobit = Chobit.find(params[:id])
    chobit.destroy
    redirect_to :action => 'index'
  end

  def fav
    chobit = Chobit.find(params[:id])
    chobit.fav = !chobit.fav
    chobit.save
    redirect_to :action => 'index'
  end
end
