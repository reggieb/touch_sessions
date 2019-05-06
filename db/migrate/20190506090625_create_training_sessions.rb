class CreateTrainingSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :training_sessions do |t|
      t.datetime :start_at
      t.text :description

      t.timestamps
    end
  end
end
