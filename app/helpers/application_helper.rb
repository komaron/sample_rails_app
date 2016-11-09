module ApplicationHelper
  def full_title(title='')
    base_title = 'Ruby on Rails Sample App'
    title.empty? ? base_title : title + ' | ' + base_title
  end
end
