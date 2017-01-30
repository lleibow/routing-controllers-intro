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

end
