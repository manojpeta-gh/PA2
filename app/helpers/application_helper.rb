module ApplicationHelper
    def sort_direction(column)
        current_direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
        current_direction
      end
end
