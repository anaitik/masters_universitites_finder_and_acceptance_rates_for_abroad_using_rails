module BxBlockQuestion
class Question < ApplicationRecord
  self.table_name = :questions
  belongs_to :test, class_name: 'BxBlockTest::Test'
  has_many :answers, class_name: 'BxBlockAnswer::Answer', dependent: :destroy
end
end