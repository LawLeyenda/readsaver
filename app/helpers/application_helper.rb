module ApplicationHelper
  def get_first_name
    current_user.name.split(" ")[0].capitalize
  end
end
