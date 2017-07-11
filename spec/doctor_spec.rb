require('spec_helper')

describe(Doctor) do

  describe('.all') do
    it('is initially empty') do
      expect(Doctor.all).to(eq([]))
    end
  end

  describe('#name') do
    it('it tells you the doctors name') do
      new_doctor = Doctor.new(name:'Daktari',speciality:'Heart',id:nil)
      expect(new_doctor.name).to(eq("Daktari"))
    end
  end

  describe('#speciality') do
    it('it tells you the doctors speciality') do
      new_doctor = Doctor.new(name:'Daktari',speciality:'Heart',id:nil)
      expect(new_doctor.speciality).to(eq("Heart"))
    end
  end

  describe('#id') do
    it('it tells you the doctors id') do
      new_doctor = Doctor.new(name:'Daktari',speciality:'Heart',id:nil)
      new_doctor.save
      expect(new_doctor.id).to(be_an_instance_of(Fixnum))
    end
  end

  describe('#save') do
    it('saves a new doctor in the database') do
      new_doctor = Doctor.new(name:'Daktari',speciality:'Heart',id:nil)
      new_doctor.save
      expect(Doctor.all).to(eq([new_doctor]))
    end
  end

end
