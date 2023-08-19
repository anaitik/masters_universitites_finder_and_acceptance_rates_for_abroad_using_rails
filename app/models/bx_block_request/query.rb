module BxBlockRequest
    class Query < ApplicationRecord
      self.table_name = :queries
      belongs_to :account, class_name: 'AccountBlock::Account'
      has_many :replies, class_name: 'BxBlockRequest::Reply', dependent: :destroy
    end
end    