require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_homework_part2.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("FootballCrew", ["Aang", "Katara", "Sokka"], "Roku", 0)
  end

  def test_team_name
    assert_equal("FootballCrew", @team.team_name)
  end

  def test_players
    assert_equal(["Aang", "Katara", "Sokka"], @team.players)
  end

  def test_coach
    assert_equal("Roku", @team.coach)
  end

  def test_set_coach_name
    @team.coach = "Michael Jordan"
    assert_equal("Michael Jordan", @team.coach)
  end

def test_add_new_player
  @team.add_new_player("Bugs Bunny")
  assert_equal(["Aang", "Katara", "Sokka", "Bugs Bunny"], @team.players)
end

# def test_check_array_for_name
#   @team.check_array_for_name("Sokka")
#   assert_equal(true, @team.check_array_for_name("Sokka"))
# end

def test_change_in_points
  @team.change_in_points("won")
  assert_equal(1, @team.points)
end


end
