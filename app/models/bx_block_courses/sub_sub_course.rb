module BxBlockCourses
  class SubSubCourse < ApplicationRecord
    belongs_to :sub_course, class_name: 'BxBlockCourses::SubCourse'
  end
end