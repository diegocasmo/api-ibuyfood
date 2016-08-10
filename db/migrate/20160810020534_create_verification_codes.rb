class CreateVerificationCodes < ActiveRecord::Migration
  def change
    create_table :verification_codes do |t|
      t.string :email, null: false
      t.string :code, null: false

      t.timestamps null: false
    end
  end
end
