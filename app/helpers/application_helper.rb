require 'uri'

module ApplicationHelper
  def is_active?(link_path)
    if params[:controller] === link_path
        "bg-violet-600 inline-block text-white rounded-full no-underline hover px-4"
    else
        "inline-block text-gray-600 rounded-full no-underline hover px-4"
    end
  end
end
