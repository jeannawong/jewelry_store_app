class Api::AccessoriesController < ApplicationController
  def index
    @accessories = Accessory.all
    render "index.json.jb"
  end

  def create
    @accessory = Accessory.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    @accessory.save
    render "show.json.jb"
  end

  def show
    @accessory = Accessory.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @accessory = Accessory.find_by(id: params["id"])
    @accessory.name = params["name"] || @accessory.name
    @accessory.price = params["price"] || @accessory.price
    @accessory.image_url = params["image_url"] || @accessory.image_url
    @accessory.description = params["description"] || @accessory.description
    @accessory.save
    render "show.json.jb"
  end

  def destroy
    accessory = Accessory.find_by(id: params["id"])
    accessory.destroy
    render json: { message: "Accessory is successfully destroyed." }
  end
end
