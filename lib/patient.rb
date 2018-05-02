class Patient
attr_accessor :appointments, :name, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    appointment
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
