class RegistrationsController < ApplicationController

  def new
    @registration = Registration.new
  end

  def index
    redirect_to "/"
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      render 'finished'
    else
      render 'new'
    end
  end

  private
    def registration_params
      params.require(:registration).permit(:company, :name, :telephone, :email, :duty)
    end
end
