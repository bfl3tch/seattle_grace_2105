class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    highest_paid = []
    doctors = self.hospitals.map { |hospital| hospital.doctors}.flatten
    highest_paid << doctors.sort_by { |doctor| doctor.salary }
    highest_paid.flatten.last
  end

  def all_doctors
    hospitals.each do |hospital|
      hospital.doctors
    end
    require "pry"; binding.pry
  end


  def doctors_by_hospital
require "pry"; binding.pry
    new_hash = {}
    @hospitals.each do |hospital|
        hospital.name
      end
    all_doctors.each do |doctor|
      hospital << doctor
      require "pry"; binding.pry
      end
  end


end
