class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def root
    render text: 'What do you want me to say!'
  end
  def index
    render text: 'Hello CodingDojo!'
  end

  def say
    render text: 'Saying hello!'
  end

  def joe
    render text: 'Saying hello Joe!'
  end

  def michael
    redirect_to action: "joe"
  end

  def times
  # if session[:count] exists, leave it as is. Else set it to 0
    session[:count] ||= 0
    render text: "You have visited this url #{session[:count] += 1} time(s)"
  end

  def restart
    reset_session
    render text: "Destroyed Session"
  end
end
