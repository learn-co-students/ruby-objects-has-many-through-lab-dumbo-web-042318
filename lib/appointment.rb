class Appointment

attr_accessor :date, :doctor, :patient
# attr_reader :patient

# @@all = []

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
    # @@all << self
  end

# def self.all
#   @@all
# end

end



# Appointment
#   #new
#     initializes with a date and a doctor (FAILED - 4)
#   #patient
#     belongs to a patient (FAILED - 5)
#   #doctor
#     belongs to a doctor (FAILED - 6)
