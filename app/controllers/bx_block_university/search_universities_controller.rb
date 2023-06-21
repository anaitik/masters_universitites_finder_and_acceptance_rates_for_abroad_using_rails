module BxBlockUniversity
    class SearchUniversitiesController < ApplicationController
      def search
        country_name = params[:country_name]
        @universities = BxBlockUniversity::University.where("LOWER(country_name) LIKE ?", "%#{country_name.downcase}%")
        render json: { universities: @universities }
      end
    end
  end
  