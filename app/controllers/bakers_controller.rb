class BakersController < ApplicationController

def index
	@bakers = Baker.all
end
 #show
def show
	@baker = Baker.find(params[:id])
end

end
