class RaceListScreen < PM::TableScreen
  title "2015 Races"
  stylesheet RaceListScreenStylesheet

  def on_load
  end

  def table_data
    [{
      cells: Race.all.sort_by(:race_date).map do |item|
        {
          title: item.short_name,
          subtitle: item.display_date,
          action: :show_race,
          arguments: { race: item }
        }
      end
    }]
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end

  def show_race(race)
    open RaceScreen.new(race)
  end
end
