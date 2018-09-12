class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def to_readable
    self.appointment_datetime = "#{self.appointment_datetime.month} #{self.appointment_datetime.day}, #{self.appointment_datetime.year} at #{self.appointment_datetime.hour}:#{self.appointment_datetime.min}"
  end
end
