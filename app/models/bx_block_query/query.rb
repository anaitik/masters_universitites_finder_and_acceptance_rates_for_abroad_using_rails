module BxBlockQuery
    class Query < ApplicationRecord
      self.table_name = :queries
      has_many :replies, class_name: 'BxBlockReply::Reply', dependent: :destroy
    end
end    