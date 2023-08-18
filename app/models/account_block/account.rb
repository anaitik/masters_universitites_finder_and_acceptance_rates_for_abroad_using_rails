module AccountBlock
    class Account < ApplicationRecord
      self.table_name = :accounts
      has_secure_password
    end 
end