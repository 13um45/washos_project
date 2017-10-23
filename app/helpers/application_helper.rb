module ApplicationHelper

  def new_active
    'active' if current_page?(controller: 'appointments', action: 'new')
  end

  def index_active
    'active' if current_page?(controller: 'appointments', action: 'index')
  end
end
