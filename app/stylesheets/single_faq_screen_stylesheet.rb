class SingleFaqScreenStylesheet < ApplicationStylesheet
  def question(st)
    st.text = controller.faq.question
    st.number_of_lines = 0
    st.frame = { t: 74, l: 10, w: device_width - 20 }
    st.color = color.red
    st.font = font.medium
    st.size_to_fit
  end

  def answer(st)
    st.text = controller.faq.answer
    st.number_of_lines = 0
    st.frame = { bp: 5, l: 10, w: device_width - 20 }
    st.color = color.black
    st.font = font.small
    st.size_to_fit
  end

  def root_view(st)
    st.background_color = color.white
  end
end
