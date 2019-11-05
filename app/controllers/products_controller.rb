class ProductsController < ApplicationController
    respond_to :json

    before_action :authenticate_user!

    def show
        product = Product.find(params[:id])
        render json: { product: product.array_to_json }
    end
end
