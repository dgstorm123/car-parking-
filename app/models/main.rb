class Main < ApplicationRecord
    
        has_one :pay, foreign_key: 'car_plate', primary_key: 'car_plate'
    
      
end
