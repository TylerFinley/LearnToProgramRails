class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.column :description, :string
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
