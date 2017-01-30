class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Uh oh, it's too much cheese."
  end

  def about
    @header = "Grapes are the poor man's plums"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    @header = "Hey, it's not a contest"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if "squanchy" == params[:magic_word]
      "/secrets/boobs"
    else flash[:alert] = "Nuh-uh cutie, try again"
      redirect_to "/"
    end
  end

end
