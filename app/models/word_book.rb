# == Schema Information
#
# Table name: word_books
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_word_books_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class WordBook < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
end
