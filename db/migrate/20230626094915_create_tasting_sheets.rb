class CreateTastingSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :tasting_sheets do |t|
      t.integer    :clarity_id
      t.integer    :brilliance_id
      t.integer    :depth_id
      t.integer    :viscosity_id
      t.integer    :attack_id
      t.integer    :sweetness_id
      t.integer    :bitterness_id
      t.integer    :alcohol_id
      t.integer    :finish_id
      t.integer    :evaluation_id      
      t.integer    :serving_temperature_id
      t.integer    :glass_id
      t.text       :detail
      t.references :wine, foreign_key: true, null: false
      t.timestamps
    end
  end
end
