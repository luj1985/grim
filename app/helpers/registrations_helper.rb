module RegistrationsHelper
  def pl(attr_name)
    errors = @registration.errors 
    if errors.include?(attr_name) 
      errors.full_message(attr_name, errors[attr_name].join(','))
    else
      name = attr_name.to_s.tr('.', '_').humanize
      name = @registration.class.human_attribute_name(attr_name, default: name)
      name + "："
    end
  end
end
