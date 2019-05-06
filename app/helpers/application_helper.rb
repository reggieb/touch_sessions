module ApplicationHelper
  def nav_link_to(text, path)
    link = link_to_unless_current text, path, class: 'nav-link' do
      link_to text, '#', class: 'nav-link'
    end
    classes = ['nav-item']
    classes << 'active' if current_page?(path)
    content_tag :li, link, class: classes.join(' ')
  end
end
