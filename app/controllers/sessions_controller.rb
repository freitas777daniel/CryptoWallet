class SessionsController < ApplicationController
  skip_before_action :authorize, only: %i(new create destroy)
  before_action :user_valid?, only: %i(create)

  def new
    
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
    session[:user_id] = @user.id
    redirect_to inicial_index_path, notice: "Autenticado com Sucesso!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
  
private

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end

  def user_valid? 
    @user = User.find_by_email(params[:email]) # vai no banco e retorna user ou nil
    unless @user&.authenticate(params[:password])
      flash.now.alert = "Email ou Senha é invalido!!!"
      render :new
    end
  end

end
