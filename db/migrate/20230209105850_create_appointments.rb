class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :doctor
      t.belongs_to :patient
      t.timestamps
    end
  end
end
