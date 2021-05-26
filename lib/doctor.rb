class Doctor
  attr_reader :name, :specialty, :education, :salary

  def initialize(doctor)
    @name = doctor[:name]
    @specialty = doctor[:specialty]
    @education = doctor[:education]
    @salary = doctor[:salary]
  end



end
