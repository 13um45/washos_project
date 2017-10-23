module AppointmentsHelper

  def formatted_value(original_value)
    return '' if original_value.blank?
    "$#{original_value / 100}"
  end

  def formatted_time(datetime)
    return '' if datetime.blank?
    datetime.strftime("%m/%d/%Y at %I:%M%p")
  end
end
