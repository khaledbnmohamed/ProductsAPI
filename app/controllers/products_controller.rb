class ProductsController < ApplicationController
    respond_to :json
    before_action :authenticate_user!
    before_action :authorize_admin, only: [:index]


    def index
        all_products = Product.all
        return send_error(:not_found) if all_products.blank?

        paginate json: all_products.compact.map(&:array_to_json), per_page: 15 
    end

    def show
        product = Product.find(params[:id])
        render json: { product: product.array_to_json }
    end

    def authorize_admin
        return send_error(:unauthorized) unless current_user.admin?
        
    end
    
end
