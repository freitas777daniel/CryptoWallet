class UsersController < ApplicationController
  skip_before_action :authorize
    def new
        @user = User.new
    end

    def index
      render_404
    end
  
    def show
      render_404
    end
  
    def edit
      render_404
    end

    def create
        @user = User.new(user_params)
        if @user.save
          flash[:notice] = 'Obrigado por se inscrever!'
          redirect_to new_session_path#, notice: 'Obrigado por se inscrever!'
        else
          render "new"
        end
    end


    private

    def user_params
      return params.require(:user).permit(:email, :password, :password_confirmation)
    end
    
    def render_404
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
        format.xml  { head :not_found }
        format.any  { head :not_found }
      end
    end

end
