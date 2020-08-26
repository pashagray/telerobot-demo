class CreateTelerobotSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :telerobot_sessions do |t|
      t.string :chat_id, null: false
      t.string :state

      t.timestamps
    end
    add_index :telerobot_sessions, :chat_id
  end
end
