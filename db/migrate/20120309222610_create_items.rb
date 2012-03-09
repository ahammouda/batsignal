class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :topic
      t.text :item_body
      t.references :agenda

      t.timestamps
    end
    add_index :items, :agenda_id
  end
end
