# This migration comes from campusties (originally 20170417094855)
class CreateCampustiesActivityCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :campusties_activity_categories do |t|
      t.string :name
      t.text :description
      t.integer :created_by_id
      t.integer :modified_by_id

      t.timestamps
    end
    add_index :campusties_activity_categories,	:name,	:unique => true
  end
end
