class Statistc < ActiveRecord::Base
    
    require 'csv'
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Statistc.create! row.to_hash
        end
    end
  
end
