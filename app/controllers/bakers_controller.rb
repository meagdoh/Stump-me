class BakersController < ApplicationController

def index
	@bakers = Baker.all
end

def new
end
 
 #show
def show
	@baker = Baker.find(params[:id])
end

def create
end

def edit
end

def update
end

def delete
end


end