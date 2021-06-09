class ListElementsController < ApplicationController
  def preview
    @preview = "<strong>#{params[:body]}</strong>"
  end
end
