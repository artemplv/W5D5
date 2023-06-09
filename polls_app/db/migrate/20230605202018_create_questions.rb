class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :text, null: false
      t.bigint :poll_id, null: false

      t.timestamps
    end

    add_foreign_key :questions, :polls, column: :poll_id
    add_index :questions, :poll_id
  end
end
