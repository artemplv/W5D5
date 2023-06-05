class ChangeResponses < ActiveRecord::Migration[7.0]
  def change
    rename_column :responses, :respondent_id_id, :respondent_id
  end
end
