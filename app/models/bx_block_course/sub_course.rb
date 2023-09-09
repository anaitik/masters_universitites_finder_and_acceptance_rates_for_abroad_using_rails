module BxBlockCourse
  class SubCourse < ApplicationRecord
    belongs_to :course, class_name: 'BxBlockCourse::Course'
    has_many :sub_sub_courses, class_name: 'BxBlockCourse::SubSubCourse'
  end
end