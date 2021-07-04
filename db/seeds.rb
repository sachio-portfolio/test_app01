require 'csv'

csv_data = CSV.read('db/Divesite.csv', headers: true)
csv_data.each do |data|
  Divesite.create!(data.to_hash)
end
