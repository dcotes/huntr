class ChangeCurrentHintColumnName < ActiveRecord::Migration
  def change
    rename_column :play_sessions, :current_hint, :current_hint_id
  end
end
