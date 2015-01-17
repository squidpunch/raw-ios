class HomeScreen < PM::Screen
  title "Race Around Waltham"
  stylesheet HomeStylesheet

  def on_load
    append(UIButton, :about_button)
    append(UIButton, :faq_button)
    append(UIButton, :rules_button)
    append(UIButton, :races_button)
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
