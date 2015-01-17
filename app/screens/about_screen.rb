class AboutScreen < PM::Screen
  title "About the RAW Series"
  stylesheet AboutScreenStylesheet

  def on_load
    append(UITextView, :about_copy)
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
