# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :authored_polls,
    class_name: 'Poll',
    foreign_key: :author_id,
    dependent: :destroy

  has_many :responses,
    class_name: 'Response',
    foreign_key: :respondent_id,
    dependent: :destroy
end
