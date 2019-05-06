class CreateTrainingSessionActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :training_session_activities do |t|
      t.references :training_session, foreign_key: true
      t.references :activity, foreign_key: true
      t.text :summary
      t.text :good
      t.text :bad
      t.text :suggestion

      t.timestamps
    end
  end
end
