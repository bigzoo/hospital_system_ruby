class Doctor
  attr_reader(:id, :name, :speciality)

  define_method(:initialize) do |attributes|
  @name = attributes.fetch(:name)
  @speciality = attributes.fetch(:speciality)
  @id = attributes.fetch(:id)
  end
end
