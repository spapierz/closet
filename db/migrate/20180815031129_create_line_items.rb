class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.references :post, foreign_key: true
      t.belongs_to :outfit, foreign_key: true

      t.timestamps
    end
  end
end
