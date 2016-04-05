class HomeController < ApplicationController
  def index
    render(text: "Landing page. Hit enter to proceed to questions.")
  end
end
