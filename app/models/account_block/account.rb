module AccountBlock
    class Account < ApplicationRecord
      self.table_name = :accounts
      has_secure_password
      
      has_many :queries, class_name: 'BxBlockQuery::Query', dependent: :destroy
      belongs_to :teacher, class_name: 'BxBlockTeacher::Teacher'
    end 
end