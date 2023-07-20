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
      'bi bi-link'
    when 'Twitter'
      'bi bi-twitter'
    when 'Facebook'
      'bi bi-facebook'
    when /office$/
      'bi bi-building-fill'
    else
      'bi bi-info-circle'
    end

    %Q{<h3><i class="#{fa_class} text-primary"></i></h2>}.html_safe
  end

end
