class ShoppersController < ApplicationController
    def index
       @products = Product.all
    end
end
