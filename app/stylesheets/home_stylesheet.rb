class HomeStylesheet < ApplicationStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def about_button(st)
    st.frame = { t: 100, w: 200, h: 25, centered: :horizontal }
    st.text = "About"
    button_defaults(st)
  end

  def faq_button(st)
    st.frame = { bp: 5, w: 200, h: 25, centered: :horizontal }
    st.text = "FAQ"
    button_defaults(st)
  end

  def rules_button(st)
    st.frame = { bp: 5, w: 200, h: 25, centered: :horizontal }
    st.text = "Rules"
    button_defaults(st)
  end

  def races_button(st)
    st.frame = { bp: 5, w: 200, h: 25, centered: :horizontal }
    st.text = "Races"
    button_defaults(st)
  end

  def button_defaults(st)
    st.color = color.white
    st.background_color = color.red
    st.corner_radius = 6
  end
end
