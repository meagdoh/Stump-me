class PostsController < ApplicationController
	def new
		@topic = Topic.find(params[:topic_id])
		@post = Post.new
	end
	def show
		@topic = Topic.find(params[:topic_id])
		@post = Post.find(params[:id])
	end
	def create
		@topic = Topic.find(params[:topic_id])
		@post = @topic.posts.create(post_params.merge(user:current_user))
		redirect_to topic_path(@topic)
	end
	def edit
		@topic = Topic.find(params[:topic_id])
		@post = Post.find(params[:id])

	end
	def update
		@topic = Topic.find(params[:topic_id])
		@post = Post.find(params[:id])
		@post.update(post_params.merge(user:current_user))
		redirect_to topic_path(@topic)
	end
	def destroy
		@topic = Topic.find(params[:topic_id])
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to topic_path(@topic)
	end

private
def post_params
  params.require(:post).permit(:title, :text, :source)
end
end
