class PostsController < ApplicationController

    def index
        @posts = Post.order("created_at DESC").all
    end

    before_action :authenticate_user!, only:[:my_posts,:new,:edit,:destroy]

    def my_posts
        @posts = User.find(current_user.id).posts
    end

    #Read
    def show
        @post = Post.find(params[:id])
    end

    #Create
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id

        if @post.save
            redirect_to root_path
        else
            render :new, status: 422
        end
    end

    #Update
    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params) && current_user.id == @post.user_id
            redirect_to root_path
        else
            render :edit,status: 422
        end
    end

    #destroy
    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to root_path
    end

    private
    def post_params
        params.require(:post).permit(:title,:content)
    end
end
