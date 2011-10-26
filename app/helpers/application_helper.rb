module ApplicationHelper
  def error_class(object, method)
    return '' if object.nil?
    object.errors[method].present? ? 'field_with_errors' : ''
  end
end
