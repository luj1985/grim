require 'csv'

class AdminController < ApplicationController
  http_basic_authenticate_with name: "cllad", password: "cllad"

  def export
    @registrations = Registration.all
    respond_to do |format|
      format.html
      format.csv { send_data @registrations.to_csv}
    end
  end
end
