module BxBlockReply
    class Reply < ApplicationRecord
      self.table_name = :replies
      belongs_to :query, class_name: 'BxBlockQuery::Query'
    end
end    