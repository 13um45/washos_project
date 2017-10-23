class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @packages = Package.all
    @options = Option.all
  end

  def create
    @appointment = Appointment.new(permit_params.except(:package, :options))
    service = create_and_associate_service
    @appointment.total_value = add_up_total_value(service)

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

  def add_up_total_value(service)
    sum = service.package.value
    if service.options.present?
      sum += service.options.pluck(:value).map(&:to_i).sum
    end
    sum
  end

  def create_and_associate_service
    service = @appointment.build_service(package_id: params[:appointment][:package])
    if params[:appointment][:options].present?
      options = []
      params[:appointment][:options].each { |_, v| options << v }
      service.options = Option.find(options)
    end
    service.save
    service
  end

  def permit_params
    params.require(:appointment).permit(:customer_name, :appointment_time, :package, :options)
  end
end
