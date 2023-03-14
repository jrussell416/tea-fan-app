class StashesController < ApplicationController
    before_action :current_user 
 
    def index
        @user = User.find_by(id: session[:user_id])
        @stashes = Stash.all 
    end
     
    def new
        @stash = Stash.new
    end
     
    def create
        @stash = current_user.stashes.create(stash_params)
        if @stash.save
          redirect_to stashes_path
        else
          render :new
        end
    end

    def edit
        stash_id = params[:id]
        @stash = Stash.find_by(id: stash_id)
    end

    def update
        stash_id = params[:id]
        @stash = Stash.find_by(id: stash_id)
        @stash.update(stash_params)

        redirect_to stashes_path
    end

    def destroy
            stash_id = params[:id]
            @stash = Stash.find_by(id: stash_id)
            current_user.stashes.destroy(@stash)

        redirect_to stashes_path
    end
     
    private
     
    def stash_params
        params.require(:stash).permit(:tea_name, :tea_type, :purchased_at, :stash_amount, :notes, :user_id)
    end
    
end
