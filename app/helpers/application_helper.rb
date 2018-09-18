module ApplicationHelper
  def title_page(page_title='')
    base_title="Ruby on rails tatorials"
    if page_title.empty?
      base_title
    else
      page_title+" | "+base_title
    end
  end
end
