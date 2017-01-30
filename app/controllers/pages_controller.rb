class PagesController < ApplicationController

  def welcome
    @header = "Uh oh, it's too much cheese."
  end

  def about
    @header = "Grapes are the poor man's plums"
  end

  def contest
    @header = "Hey, it's not a contest"
  end

  def kitten
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
