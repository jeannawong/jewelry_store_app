class Api::AccessoriesController < ApplicationController
  def index
    @index = Accessory.all
    render "index.json.jb"
  end
end
