require 'faker'



puts `clear`
puts "    ################################################################"
puts "    ######## ~ L'ancienne base de donnée va être supprimée~ ########"
puts ""
puts "    ----------------------------------------------------------------"

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all

puts `clear`
puts "    ################################################################"
puts "    ########      ~ Ecriture de la base de données ~      ########"
puts ""
puts "    ----------------------------------------------------------------"
puts 
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


puts ""
puts ""
puts "              ############🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 ###########"
puts "              ####### ~ Merci pour ta patience ! ~ ###########"
puts "              ############🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 🥰 ###########"