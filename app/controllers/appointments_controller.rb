class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @appointment.services.build
    @packages = Package.all
    @options = Option.all
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to @appointment
    else
      @packages = Package.all
      @options = Option.all
      render 'new'
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointments = Appointment.all
  end

  private

  def appointment_params
    params
      .require(:appointment)
      .permit(
        :customer_name,
        :appointment_time,
        services_attributes:
          [
            :id,
            :value,
            :appointment_id,
            :package_id,
            :_destroy,
            service_options_attributes:
              [
                :id,
                :service_id,
                :option_id,
                :_destroy
              ]
          ]
      )
  end
end
