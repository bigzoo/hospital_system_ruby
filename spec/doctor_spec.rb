require('spec_helper')

describe(Doctor) do

  describe('.all') do
    it('is initially empty') do
      expect(Doctor.all).to(eq([]))
    end
  end

end
