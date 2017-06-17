class TopicsController < ApplicationController

def index
	@topics = Topic.all
end
 #show
def show
	@topics = Topic.find(params[:id])
	@post = Post.find(params[:id])
end

end
