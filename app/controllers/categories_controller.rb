class CategoriesController < ApplicationController
    
    def new
        @category = Category.new
    end
    
    def create
        # render plain:params[:category].inspect
        @category = Category.new(category_params)
        @category.save
        redirect_to categories_show(@category)
    end
    
    private
        def category_params
            params.require(:category).permit(:name, :description)
        end
end