class BxBlockCourse::SubSubSubCourse < ApplicationRecord
  belongs_to :sub_sub_course , class_name: 'BxBlockCourse::SubSubCourse'
end
