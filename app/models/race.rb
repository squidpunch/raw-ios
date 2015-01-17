class Race < CDQManagedObject

  def display_date
    if race_date
      race_date.strftime("%b %e")
    else
      "TBD"
    end
  end
end
