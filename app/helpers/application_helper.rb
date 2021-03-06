module ApplicationHelper
  def flash_message
    content_tag :div, class: "flash-messages" do
      flash.map do |key, value|
        content_tag :div, class: "alert alert-dismissable alert-#{key}" do
          content_tag(:span, '&times;'.html_safe, class: :close, 'data-dismiss' => 'alert') + content_tag(:p, value, class: "danger")
        end
      end.join().html_safe
    end
  end
end
