class SingleFaqScreen < PM::Screen
  stylesheet SingleFaqScreenStylesheet
  title ""

  attr_accessor :faq

  def on_load
    append(UILabel, :question)
    append(UILabel, :answer)
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
