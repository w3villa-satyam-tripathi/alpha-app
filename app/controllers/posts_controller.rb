class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        
        @post = Post.new
        
    end

    def create
    
        
        
        @post = Post.new(params.require(:post).permit(:name, :article_id))
        
        if @post.save
            flash[:notice] = "Post successfully added"
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(params.require(:post).permit(:name))
            flash[:notice] = "Post successfully updated"
            redirect_to @post
        else
            render 'edit'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end
end   