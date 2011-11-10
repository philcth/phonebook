class PhoneController < ApplicationController
  def index
    @phones = Pbook.all
  end

  def newphone
    @pbook = Pbook.new
  end

  def create
    @pbook = Pbook.new(params[:pbook])
    @pbook.save
    redirect_to :action => :index
  end

  def edit
    @pbook = Pbook.find(params[:id])
  end

  def updateing
    @pbook = Pbook.find(params[:id])
    @pbook.update_attributes(params[:pbook])

    redirect_to :action => "index"
  end

  def del
    @pbook = Pbook.find(params[:id])
    @pbook.destroy

    redirect_to :action => "index"
  end

end
