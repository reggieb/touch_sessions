class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.references :activity_type, type: :string, index: true

      t.timestamps
    end
  end
end
