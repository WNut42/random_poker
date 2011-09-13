class ApplicationController < ActionController::Base
  protect_from_forgery
  
  $colors = ('A'..'D')
  $numbers = (1..13)
end
