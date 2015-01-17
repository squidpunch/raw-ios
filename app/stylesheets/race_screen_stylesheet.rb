class RaceScreenStylesheet < ApplicationStylesheet
  def root_view(st)
    st.background_color = color.white
  end

  def name(st)
    st.text = controller.race.name
    st.frame = { w: device_width - 10, centered: :horizontal, t: 100 }
    st.number_of_lines = 0
    st.size_to_fit
  end

  def benefit(st)
    st.text = "to benefit: #{controller.race.benefit}"
    st.frame = { w: device_width - 10, centered: :horizontal, bp: 5 }
    st.number_of_lines = 0
    st.size_to_fit
  end

  def view_website(st)
    st.text = "Visit Race Website"
    st.frame = { bp: 20, w: 200, h: 50, centered: :horizontal }
    st.background_color = color.red
    st.color = color.white
    st.corner_radius = 6
  end
end
