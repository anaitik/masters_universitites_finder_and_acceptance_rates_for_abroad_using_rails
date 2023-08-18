module BxBlockTeacher
    class Teacher < ApplicationRecord
      self.table_name = :teachers
      belongs_to :account, class_name: 'AccountBlock::Account'
    end
end
