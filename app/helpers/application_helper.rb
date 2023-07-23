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


  def pagination_range(total_pages, current_page, leading = 2, following = 3)
    return (1..total_pages) if total_pages <= leading + following + 1 

    if current_page <= leading 
      delta = leading - current_page + 1 
      leading -= delta 
      following += delta
    elsif current_page + following >= total_pages
      delta = total_pages - (following + current_page) - 1
      following += delta  + 1
      leading -= delta
    end
    (current_page-leading..current_page+following)
  end

end
