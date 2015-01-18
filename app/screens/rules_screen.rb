class RulesScreen < PM::Screen
  title "2015 Rules"
  stylesheet RulesScreenStylesheet

  def on_load
    append(UITextView, :rules_copy)
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
