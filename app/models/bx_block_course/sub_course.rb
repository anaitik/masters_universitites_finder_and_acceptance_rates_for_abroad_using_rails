module BxBlockCourse
  class SubCourse < ApplicationRecord
    belongs_to :course, class_name: 'BxBlockCourses::Course'
    has_many :sub_sub_courses, class_name: 'BxBlockCourse::SubSubCourse'
  end
end