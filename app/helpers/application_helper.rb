module ApplicationHelper
  def page_title(title = "")
    if title.empty?
      '42 Vienna AoC Leaderboard'
    else
      "#{title} | 42 Vienna AoC Leaderboard"
    end
  end

  def page_year
    if @year
      @year.number
    elsif params[:year]
      params[:year]
    else
      Time.now.year
    end
  end
end
