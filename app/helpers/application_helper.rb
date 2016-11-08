module ApplicationHelper
  def full_title(title='')
    base_title = 'Ruby on Rails Sample App'

    if (title == '')
      base_title
    else
      title + ' | ' + base_title
    end
  end
end
