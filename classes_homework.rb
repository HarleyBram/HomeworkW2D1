class CodeClanStudent
  attr_accessor :student_name, :student_cohort

def initialize(student_name, student_cohort)
  @student_name = student_name
  @student_cohort = student_cohort
end

def student_name
  return @student_name
end

def student_cohort
  return @student_cohort
end

def set_student_name(new_student_name)
  @student_name = new_student_name
end

def set_student_cohort(new_student_cohort)
  @student_cohort = new_student_cohort
end

def talking_student(speech)
return speech
end

def student_favourite_language(favourite_language)
return "I love #{favourite_language}"
end

end
