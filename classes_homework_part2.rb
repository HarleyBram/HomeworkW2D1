class SportsTeam

  attr_accessor :team_name, :players, :coach, :points
  # attr_reader :team_name
  # attr_writer :players

  def initialize(input_team_name, input_players, input_coach, input_points)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  # # GETTERS:
  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end

  def set_coach_name(new_coach_name)
    @coach = new_coach_name
  end

  # def set_players(new_players)
  #   @players = new_players
  # end


  def add_new_player(new_player)
    @players.push(new_player)
  end

  # def check_array_for_name(person)
  #   for name in @players
  #     if name == person
  #       return true
  #     else
  #       return false
  #     end
  #   end

  def change_in_points(outcome)
    if outcome == "won"
      return @points += 1
    elsif outcome == "loss"
      return @points -=1
    end
  end



end
