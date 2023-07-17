module ContactsHelper

  def contact_address(contact)
    fields = %i[line1 line2 line3 line4 line5 postcode]
    values = fields
               .map { |f| contact.send(f) }
               .reject { |f| f&.empty? }
               .compact
    values.append("<a href=\"tel:#{contact.phone}\">#{contact.phone}</a>") if contact.phone
    values.join('<br />').html_safe
  end

  def contact_icon(contact)
    fa_class = case contact.type
    when 'Website'
      'fa-solid fa-globe'
    when 'Twitter'
      'fa-brands fa-twitter'
    when 'Facebook'
      'fa-brands fa-facebook'
    when /office$/
      'fa-solid fa-building'
    else
      'fa-regular fa-circle'
    end

    %Q{<i class="#{fa_class} text-primary fa-fw fa-xl"></i>}.html_safe
  end

end
