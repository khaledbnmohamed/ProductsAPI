class Product < ApplicationRecord
    has_many_attached :image_url

    def array_to_json
        { product_id: id, product_name: title }
      end
end
