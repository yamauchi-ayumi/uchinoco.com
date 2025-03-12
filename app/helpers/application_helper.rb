module ApplicationHelper

  def flash_background_color(type)
    case type.to_sym
    when :notice then "bg-green-100"
    when :alert then "bg-red-100"
    when :error then "bg-yellow-100"
    else "bg-gray-100"
    end
  end

  def flash_text_color(type)
    case type.to_sym
    when :notice then "text-green-700"
    when :alert then "text-red-700"
    when :error then "text-yellow-700"
    else "text-gray-700"
    end
  end

  def flash_border_color(type)
    case type.to_sym
    when :notice then "border-green-400"
    when :alert then "border-red-400"
    when :error then "border-yellow-400"
    else "border-gray-400"
    end
  end
end
