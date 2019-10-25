# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
DoctorSpecialty.destroy_all

doctors = []
patients = []
specialties = []
# arrays pour stocker nos éléments
zip_code = ["33000", "33800", "33400", "33100"]

bdx = City.create(name: "Bordeaux")
paris = City.create(name: "Paris")
# on crée les cities

specialty_array = ["Generalist", "Cardiology", "Dermatology", "Dentist", "Pediatric"]
specialty_array.each do |specialty|
  specialties << Specialty.new(name: specialty)
  # on remplie specialties
end

5.times do |index|
  # on crée 5 docteurs et 5 patients
  doctors << Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: zip_code.sample, city: bdx)
  patients << Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: bdx)
  # on remplie doctors et patients
end

10.times do |index|
  # on crée 10 rdv au hasard en utilisant doctors et patients
  Appointment.create(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30), doctor: doctors.sample, patient: patients.sample, city: bdx)
end

8.times do |index|
  # on crée 8 liens entre docteurs et spécialités
  DoctorSpecialty.create(doctor: doctors.sample, specialty: specialties.sample)
end
