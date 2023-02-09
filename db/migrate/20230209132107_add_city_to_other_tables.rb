class AddCityToOtherTables < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :city, foreign_key: true, optional:true
    remove_column :doctors, :zip_code, :string, optional:true
    add_reference :patients, :city, foreign_key: true, optional:true
    add_reference :appointments, :city, foreign_key: true, optional:true
  end
end
