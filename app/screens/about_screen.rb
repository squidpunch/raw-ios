class AboutScreen < PM::Screen
  title "About RAW"
  stylesheet AboutScreenStylesheet

  def on_load
    append(UITextView, :about_copy)
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
