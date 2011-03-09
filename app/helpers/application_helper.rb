module ApplicationHelper

  # Outputs the corresponding flash message if any are set
  def flash_messages
    messages = []
    %w(notice warning error warn).each do |msg|
      messages << content_tag(:div, html_escape(flash[msg.to_sym]), :id => "flash-#{msg}") unless flash[msg.to_sym].blank?
    end
    messages
  end

  def show_flash
    [:notice, :warning, :message].collect do |key|
      flash[key] unless flash[key].blank?
    end.join
  end


end
