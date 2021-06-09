class ListElementsController < ApplicationController
  def preview
    preview = "<strong>#{request.raw_post}</strong>"
    render plain: preview
  end
end
