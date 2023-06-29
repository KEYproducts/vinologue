class CreateTastingSheetOptionTables < ActiveRecord::Migration[6.0]
  def change
    create_table :hues do |t|
      t.string :option
    end

    create_table :appearances do |t|
      t.string :option
    end

    create_table :aroma_elements do |t|
      t.string :option
    end

    create_table :aroma_impressions do |t|
      t.string :option
    end

    create_table :acidities do |t|
      t.string :option
    end

    create_table :balances do |t|
      t.string :option
    end

    create_table :evaluations do |t|
      t.string :option
    end
  end
end
