class StandingsScreen < PM::TableScreen
  title "2015 Standings"
  stylesheet StandingsScreenStylesheet

  def on_load
  end

  def table_data
    [{
      cells: results.map do |result|
        {
          title: result.name,
          subtitle: result.score
        }
      end
    }]
  end

  def will_animate_rotate(orientation, duration)
    reapply_styles
  end

  def results
    [
      new_result(
        name: "Mark D'Amico",
        gender: "M",
        score: 15,
        count: 6
      ),
      new_result(
        name: "Kristen Sommerhalter",
        gender: "F",
        score: 67,
        count: 8
      ),
      new_result(
        name: "David Larrabee",
        gender: "M",
        score: 463,
        count: 7
      )
    ]
  end

  def new_result(params)
    RawResult.new.tap do |r|
      r.name = params[:name]
      r.gender = params[:gender]
      r.score = params[:score].to_s
      r.count = params[:count].to_s
    end
  end

  class RawResult
    attr_accessor :name, :gender, :score, :count
  end
end
