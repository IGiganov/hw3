class PlacesController < ApplicationController
    def index 
        @places = Place.all
        
        #render the file views/palces/index.html.erb
        #@username = params["username"]
    end

    def show 
        
        @place = Place.find_by({"id" => params["id"]})
        @posts = Post.where({"place_id" =>  params["id"]})

        #render the file views/palces/index.html.erb
        
    end


end
