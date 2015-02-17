class HomeStylesheet < ApplicationStylesheet

  def root_view(st)
    st.background_color = color.white
  end

  def scrollable(st)
    st.frame = { l: 0, t: 0, w: screen_width, h: screen_height }
    st.view.contentSize = [0, 575]
  end

  def logo(st)
    st.frame = { t: 30, w: logo_size, h: logo_size, centered: :horizontal }
    st.image = image.resource("raw-logo")
  end

  def about_button(st)
    st.text = "About"
    button_defaults(st)
  end

  def faq_button(st)
    st.text = "FAQ"
    button_defaults(st)
  end

  def rules_button(st)
    st.text = "Rules"
    button_defaults(st)
  end

  def races_button(st)
    st.text = "Races"
    button_defaults(st)
  end

  def standings_button(st)
    st.text = "Standings"
    button_defaults(st)
  end

  def signup_button(st)
    st.text = "Signup"
    button_defaults(st)
  end

  def button_defaults(st)
    st.frame = { bp: 5, w: 200, h: 35, centered: :horizontal }
    st.color = color.white
    st.background_color = color.red
    st.corner_radius = 6
  end

  def logo_size
    device_width - (device_width * 0.2)
  end

end
