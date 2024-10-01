module ApplicationHelper
    def index
        @movies = Movie.all
        # Determine sorting column and direction, default is by title, ascending
        sort_column = params[:sort_by] || 'title'
        sort_direction = params[:direction] == 'desc' ? 'desc' : 'asc'
    
        # Order the movies by the chosen column and direction
        @movies = Movie.order("#{sort_column} #{sort_direction}")
      end    
end
