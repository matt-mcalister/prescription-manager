class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.string :dose
      t.string :t_o_d
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
