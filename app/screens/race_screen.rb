class RaceScreen < PM::Screen
  stylesheet RaceScreenStylesheet

  attr_accessor :race

  def on_load
    self.title = race.short_name

    append(UILabel, :name)
    append(UILabel, :benefit)
    append(UIButton, :view_website).on(:tap) do
      UIApplication.sharedApplication.openURL(NSURL.URLWithString(race.website))
    end
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end
end
