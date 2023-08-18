module BxBlockStudent
    class Student < ApplicationRecord
      self.table_name = :students
      belongs_to :account, class_name: 'AccountBlock::Account'
    end
end    