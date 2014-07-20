class WelcomeController < ApplicationController

  def index
    @successes = Success.all
    @priorities = Priority.all
    @stucks = Stuck.all
  end
end
