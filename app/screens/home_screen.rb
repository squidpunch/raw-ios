class HomeScreen < PM::Screen
  title "Race Around Waltham"
  stylesheet HomeStylesheet

  def on_load
    append(UIButton, :about_button).on(:tap) do
      open AboutScreen
    end
    append(UIButton, :faq_button).on(:tap) do
      open FaqScreen
    end
    append(UIButton, :rules_button).on(:tap) do
      open RulesScreen
    end
    append(UIButton, :races_button).on(:tap) do
      open RaceListScreen
    end
    append(UIButton, :signup_button).on(:tap) do
      open SignupFormScreen
    end
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
