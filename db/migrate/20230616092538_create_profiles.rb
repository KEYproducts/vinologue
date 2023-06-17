class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer    :sex,           null: false
      t.integer    :age,           null: false
      t.integer    :prefecture_id, null: false
      t.references :user,          foreign_key: true, null: false

      t.timestamps
    end
  end
end
