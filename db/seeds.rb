require 'faker'




puts `clear`
puts "Suppression de la base de données en cours..."

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all

puts "Ecriture de la base de données..."
sleep(2)

10.times do |index|
	patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	puts "Patient: #{patient.first_name} | #{patient.last_name} "
end

10.times do |doc|
	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.zip.to_i)
	puts "Doctor : #{doctor.first_name} | #{doctor.last_name} | #{doctor.postal_code}"
end

3.times do |appo|
	appointment = Appointment.create!(date: Time.now, patient_id: 1, doctor_id: 1)
	puts "Appointment : #{appointment.date}"
end 