class Doctor

attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

# instance method
# takes in an instance of the `Appointment` class
# adds that appointment to the doctor's `@appointments` array
# tells that appointment that it belongs to that doctor
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

# instance method
# returns the `@appointments` array

# instance method
# iterates over that doctor's appointments
# collects the patient that belongs to each appointment
  def patients
    @appointments.collect do |x|
      x.patient
    end
end

end
