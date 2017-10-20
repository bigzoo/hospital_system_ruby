require('rspec')
require('doctor')
require('patient')
require('pg')



DB = PG.connect(dbname: 'hospital_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM doctors *;')
    DB.exec('DELETE FROM patients *;')
  end
end
