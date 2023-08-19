module BxBlockRequest
    class Reply < ApplicationRecord
      self.table_name = :replies
      belongs_to :query, class_name: 'BxBlockRequest::Query'
    end
end    