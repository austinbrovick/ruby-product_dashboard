class CommentsController < ApplicationController
    def create
        p = Product.find(params[:id])
        Comment.create(comment:params[:comment], product:p)
        redirect_to '/products/'+params[:id]
    end
    def index
        @comments = Comment.all
    end




end
