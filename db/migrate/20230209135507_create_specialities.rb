class CreateSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :specialities do |t|
      t.string :nom_specialite
      t.timestamps
    end
  end
end
