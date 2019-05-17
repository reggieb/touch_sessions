class RenameAttributes < ActiveRecord::Migration[5.2]
  def change
    rename_column :training_sessions, :description, :aims
    add_column :training_sessions, :venue, :text
    add_column :training_sessions, :title, :string

    rename_column :training_session_activities, :summary, :aim
    rename_column :training_session_activities, :good, :description
    rename_column :training_session_activities, :bad, :technical_points
    rename_column :training_session_activities, :suggestion, :differentiation
    add_column :training_session_activities, :duration_minutes, :integer
  end
end
