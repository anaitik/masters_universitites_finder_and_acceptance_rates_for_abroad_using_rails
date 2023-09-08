module BxBlockCourses
  class Course < ApplicationRecord
    has_many :sub_courses, class_name: 'BxBlockCourses::SubCourse'
  end
end