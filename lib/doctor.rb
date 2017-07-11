class Doctor
  attr_reader(:id, :name, :speciality)

  define_method(:initialize) do |attributes|
  @name = attributes.fetch(:name)
  @speciality = attributes.fetch(:speciality)
  @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    result = DB.exec('SELECT * FROM doctors;')
    doctors = []
    result.each() do |doctor|
      name = doctor.fetch('name')
      speciality = doctor.fetch('speciality')
      id = doctor.fetch('id').to_i
      new_doctor = Doctor.new(id:id,name:name, speciality:speciality)
      doctors.push(new_doctor)
    end
    doctors
  end
end
