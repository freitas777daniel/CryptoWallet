class InicialController < ApplicationController
  # before_action :authorize
  skip_before_action :authorize, only: %i(index)

  def index
  end
end
