require 'pry'

class Patient

  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

# instance method
# takes in an argument of an appointment
# adds appointment instance to the `@appointments` array
# tell the appointment that it belongs to this patient
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

# instance method
# returns the `@appointments` array

# instance method
# iterates over that patient's appointments
# collects the doctor that belongs to each appointment
  def doctors
    @appointments.collect do |patient_appointments|
      patient_appointments.doctor
    end
  end

end
