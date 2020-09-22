class CardsController < ApplicationController
  layout 'cards'

  def index
    @cards = Card.all
  end

  def show
    @cards = Card.find(params[:id])
  end

  def add
    if request.post? then
      Card.create(card_params)
      goback
    else
      @cards = Card.new 
    end
  end
  
  def edit
    @cards = Card.find(params[:id])
    if request.patch? then
      @cards.update(card_params)
      goback
    end
  end

  def delete
    Card.find(params[:id]).destroy
    goback
  end
  
  private
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end

  private 
  def goback
    redirect_to '/cards'
  end
end
