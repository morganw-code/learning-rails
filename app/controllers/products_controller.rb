class ProductsController < ApplicationController
    def index
        @products = ["Toothbrush", "Lynx"]
    end
end