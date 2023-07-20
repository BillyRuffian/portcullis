module ApplicationHelper

  def tabbed_menu_item(text, link)
    
    active_class =
      if request.path == link
        'nav-link active'
      else
        'nav-link'
      end
  
    link_to text, link, class: active_class
  end

end
