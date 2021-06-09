class CreateListElements < ActiveRecord::Migration[6.1]
  def change
    create_table :list_elements do |t|
      t.references :list, null: false, foreign_key: true
      t.text :text
      t.string :reference

      t.timestamps
    end
  end
end
