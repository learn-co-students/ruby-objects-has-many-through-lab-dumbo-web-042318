class Patient
# A patient is instantiated with a name and an empty @appointments array.
  attr_accessor :name, :appointment  

    def initialize (name)
      @name = name
      @appointments = []
    end

      def add_appointment(appointment)
        @appointments << appointment
        #This method should also tell the appointment that it belongs to this patient.
          appointment.patient = self
        end

          def appointments
            @appointments
          end

          def doctors
            # that iterates over that patient's appointments and collects the doctor that belongs to each appointment.
            @appointments.collect do |appointment|
              appointment.doctor
            end
      end
end
