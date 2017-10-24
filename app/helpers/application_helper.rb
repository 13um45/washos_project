module ApplicationHelper
  def link_to_add_row(name, f, association, **args)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize, f: builder)
    end
    link_to(name, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end

  def new_active
    'active' if current_page?(controller: 'appointments', action: 'new')
  end

  def index_active
    'active' if current_page?(controller: 'appointments', action: 'index')
  end

  def render_service_title(appointment)
    if appointment.services.count > 1
      'Services'
    else
      'Service'
    end
  end

  def return_id(f)
    f.object_name.delete('^0-9')
  end
end
