module BxBlockAnswer
class Answer < ApplicationRecord
  self.table_name = :answers
  belongs_to :question, class_name: 'BxBlockQuestion::Question'
end
end