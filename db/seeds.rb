Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

# 100.times do |index|
#   Doctor.create(
#     first_name:Faker::Name.first_name, 
#     last_name:Faker::Name.last_name, 
#     speciality:["Chirurgien", "Mamour", "Fétichiste", "Gériatre", "Pédiatre", "Gynécologue"].sample,
#     zip_code: (Faker::Number.number(digits: 5)).to_s
#   )
# end
# puts "Données seedé pour doctors !"

# 100.times do |index|
#   Patient.create(
#     first_name:Faker::Name.first_name, 
#     last_name:Faker::Name.last_name
#   )
# end
# puts "Données seedé pour patients !"

# 100.times do |index|
#   Appointment.create(
#     date:Faker::Time.forward(days: 23, period: :morning),
#     doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)),
#     patient: Patient.find(rand(Patient.first.id..Patient.last.id))
#   )
# end
# puts "Données seedé pour appointments !"
X= 100
X.times do |index|
  Doctor.create(
    first_name:Faker::Name.first_name, 
    last_name:Faker::Name.last_name, 
    speciality:["Chirurgien", "Mamour", "Fétichiste", "Gériatre", "Pédiatre", "Gynécologue"].sample,
    zip_code: (Faker::Number.number(digits: 5)).to_s
  )

  Patient.create(
    first_name:Faker::Name.first_name, 
    last_name:Faker::Name.last_name
  )

  Appointment.create(
    date:Faker::Time.forward(days: 23, period: :morning),
    doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)),
    patient: Patient.find(rand(Patient.first.id..Patient.last.id))
  )
end
puts "#{X} données seedé pour les 3 tables doctors, patients et appointments !"
