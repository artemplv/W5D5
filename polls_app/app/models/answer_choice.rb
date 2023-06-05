# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  text        :text             not null
#  question_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class AnswerChoice < ApplicationRecord
  belongs_to :question,
    class_name: 'Question',
    foreign_key: :question_id

  has_many :responses,
    class_name: 'Response',
    foreign_key: :answer_choice_id,
    dependent: :destroy
end
