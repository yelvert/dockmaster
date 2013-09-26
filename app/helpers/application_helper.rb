module ApplicationHelper
  def links_list(*args)
    args.join(' | ').html_safe
  end
end
