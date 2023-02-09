Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
JoinTableDoctorCity.destroy_all

X= 50
X.times do |index|
  City.create(
    name:Faker::Address.city, 
    zip_code:Faker::Number.number(digits: 5)
  ) 
  
  Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city: City.find(rand(City.first.id..City.last.id))
  )

  Patient.create(
    first_name:Faker::Name.first_name, 
    last_name:Faker::Name.last_name,
    city: City.find(rand(City.first.id..City.last.id))
  )

  Appointment.create(
    date:Faker::Time.forward(days: 23, period: :morning),
    doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)),
    patient: Patient.find(rand(Patient.first.id..Patient.last.id)),
    city: City.find(rand(City.first.id..City.last.id))
  )
end
puts "#{X} données seedé pour les 4 tables doctors, patients, appointments, cities !"
puts "Pour mémoire spécialité déjà pré-rempli avec qq spécialités"

Y=100
Y.times do |index|
  JoinTableDoctorCity.create(
    doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)),
    speciality: Speciality.find(rand(Speciality.first.id..Speciality.last.id))
  )
end

  puts "#{Y} lien spécialité/docteurs ajoutées !"

