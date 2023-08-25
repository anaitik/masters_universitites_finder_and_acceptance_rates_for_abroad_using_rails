module AccountBlock
    class Account < ApplicationRecord
      self.table_name = :accounts
      has_secure_password
      enum role: { teacher: 0, student: 1 }
      has_many :queries, dependent: :destroy
      belongs_to :teacher, class_name: 'BxBlockTeacher::Teacher'
    end 
end