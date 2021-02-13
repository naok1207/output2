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
  has_many :word_relations, dependent: :destroy
  has_many :words, through: :word_relations, source: :word

  validates :title, presence: true

  def add_word(word)
    words << word
  end

  def del_word(word)
    words.destroy(word)
  end
end
