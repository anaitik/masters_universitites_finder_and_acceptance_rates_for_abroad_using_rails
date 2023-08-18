module AccountBlock
    class Account < AccountBlock::ApplicationRecord
      self.table_name = :accounts
    end 
end