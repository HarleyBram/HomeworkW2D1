require('minitest/autorun')
require('minitest/reporters')
require_relative('../classes_homework.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Harley", "G17")
  end


  def test_student_name
    assert_equal("Harley", @student.student_name)
  end

  def test_student_cohort
    assert_equal("G17", @student.student_cohort)
  end

  def test_set_student_name
    @student.student_name = "Esther"
    assert_equal("Esther", @student.student_name)
  end

  def test_set_student_cohort
    @student.student_cohort = "G1"
    assert_equal("G1", @student.student_cohort)
  end

  def test_talking_student
    speech = @student.talking_student("I can talk!")
    assert_equal("I can talk!", speech)
  end

  def test_student_favourite_language
    speech = @student.student_favourite_language("Ruby")
    assert_equal("I love Ruby", speech)
  end

end
