class Doctor

  #A doctor should be initialized
  #with a name and an empty @appointments array.
  attr_accessor :name
    def initialize(name)
      @name = name
      @appointments =[]
    end

#    that takes in an instance of the Appointment class and adds that appointment to the doctor's @appointments array.
  #    The method should also tell that appointment that it belongs to that doctor.
      def add_appointment (appointment)
        @appointments << appointment
            appointment.doctor = self
      end

         def appointments
            @appointments
         end

     #that iterates over that doctor's appointments
     #and collects the patient that belongs to each appointment.
           def patients
              self.appointments.collect do |appointment|
                  appointment.patient
          end
      end
end
