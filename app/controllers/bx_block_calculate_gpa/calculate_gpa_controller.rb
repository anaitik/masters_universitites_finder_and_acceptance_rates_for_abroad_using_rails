module BxBlockCalculateGpa
  class CalculateGpaController < ApplicationController
    def calculate_gpa
      cgpa = params[:cgpa].to_f
      topper_gpa = params[:topper_gpa].to_f

      gpa = (cgpa / topper_gpa) * 4
      rounded_gpa = gpa.round(2)

      render json: { gpa: rounded_gpa }
    end
  end
end
