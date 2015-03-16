class Product < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      product = find_by(id: row["id"]) || new  # exist or not
      product.attributes = row.to_hash.slice(*updatable_attributes)
      product.save!
    end
  end
  
  def self.updatable_attributes
    ["name", "price", "released_on"]
  end
end
