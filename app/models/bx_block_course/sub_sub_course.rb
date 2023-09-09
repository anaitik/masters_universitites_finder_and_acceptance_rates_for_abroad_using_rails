module BxBlockCourse
  class SubSubCourse < ApplicationRecord
    belongs_to :sub_course, class_name: 'BxBlockCourse::SubCourse'
    has_many :sub_sub_sub_courses, class_name: 'BxBlockCourse::SubSubSubCourse'
  end
end