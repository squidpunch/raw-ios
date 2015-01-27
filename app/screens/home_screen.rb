class HomeScreen < PM::Screen
  title "Race Around Waltham"
  stylesheet HomeStylesheet

  def on_load
    append(UIScrollView, :scrollable).tap do |s|
      s.append(UIImageView, :logo)
      s.append(UIButton, :about_button).on(:tap) do
        open AboutScreen
      end
      s.append(UIButton, :faq_button).on(:tap) do
        open FaqScreen
      end
      s.append(UIButton, :rules_button).on(:tap) do
        open RulesScreen
      end
      s.append(UIButton, :races_button).on(:tap) do
        open RaceListScreen
      end
      s.append(UIButton, :signup_button).on(:tap) do
        open SignupFormScreen
      end
    end
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
