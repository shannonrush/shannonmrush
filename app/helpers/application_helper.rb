# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

    def selected_status(current, listed)
      current == listed ? "selected" : nil
    end
    
end
