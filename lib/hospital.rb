class Hospital
  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    salaries = []
    @doctors.each do |doctor|
      salaries << doctor.salary
    end
    salaries.sum
  end

  def lowest_paid_doctor
    lowest_paid = doctors.sort { |doctor| doctor.salary }
    lowest_paid.first.name
  end

  def specialties
    doctors.map { |doctor| doctor.specialty }
  end


end
