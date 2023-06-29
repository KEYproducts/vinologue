class CreateTastingSheetJoinTables < ActiveRecord::Migration[6.0]
  def change
    create_table :hues_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :hue, null: false, foreign_key: true
    end

    create_table :appearances_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :appearance, null: false, foreign_key: true
    end

    create_table :first_impressions_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :first_impression, null: false, foreign_key: true
    end

    create_table :aroma_elements_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :aroma_element, null: false, foreign_key: true
    end

    create_table :aroma_impressions_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :aroma_impression, null: false, foreign_key: true
    end

    create_table :acidities_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :acidity, null: false, foreign_key: true
    end

    create_table :balances_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :balance, null: false, foreign_key: true
    end

    create_table :evaluations_tasting_sheets, id: false do |t|
      t.references :tasting_sheet, null: false, foreign_key: true
      t.references :evaluation, null: false, foreign_key: true
    end
  end
end
