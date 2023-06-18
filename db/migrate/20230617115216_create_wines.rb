class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string     :name,       null: false
      t.integer    :type_id,    null: false
      t.integer    :country_id, null: false
      t.string     :area
      t.integer    :variety_id
      t.string     :vintage
      t.integer    :star_id,    null: false
      t.text       :comment
      t.references :user,       foreign_key: true, null: false
      t.timestamps
    end
  end
end
