# == Schema Information
#
# Table name: words
#
#  id          :bigint           not null, primary key
#  description :text(65535)      not null
#  word        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_words_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Word < ApplicationRecord
  belongs_to :user

  validates :word, presence: true
  validates :description, presence: true
end
