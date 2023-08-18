module AccountBlock
    class Account < ApplicationRecord
      self.table_name = :accounts
      has_secure_password
      enum role: { teacher: 0, student: 1 }
    end 
end