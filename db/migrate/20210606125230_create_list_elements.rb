class CreateListElements < ActiveRecord::Migration[6.1]
  def change
    create_table :list_elements do |t|
      t.references :lists, null: false, foreign_key: true
      t.string :subject
      t.text :text
      t.string :reference

      t.timestamps
    end
  end
end
