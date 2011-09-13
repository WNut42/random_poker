class IndexController < ApplicationController
  def index
  end

  def get_random
    hash = Hash.new
    loop do
      random_poker = $colors.to_a[rand(4)]+$numbers.to_a[rand(13)].to_s
      hash[random_poker.to_sym] = random_poker
      break if hash.length == 13
    end
    @random = hash.values * ","
    respond_to do |format|
      format.js
    end
  end

end
