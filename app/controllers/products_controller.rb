class ProductsController < ApplicationController
    respond_to :json
    before_action :authenticate_user!


    def index
        authorize Product.new
        all_products = Product.all
        return send_error(:not_found) if all_products.blank?
        paginate json: all_products.compact.map(&:array_to_json), per_page: 15 
    end

    def show
        @product = Product.find(params[:id])
        return render json: { product: @product.array_to_json } unless stale?(last_modified: @product.updated_at)
        
    end
    
end
