module ApplicationHelper
  def full_title page_title
    base_title = t(".application_info")
    page_title.blank? ? base_title : page_title + " | " + base_title
