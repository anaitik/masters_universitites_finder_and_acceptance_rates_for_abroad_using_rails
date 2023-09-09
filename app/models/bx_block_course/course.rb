module BxBlockCourse
  class Course < ApplicationRecord
    has_many :sub_courses, class_name: 'BxBlockCourse::SubCourse'
  end
end