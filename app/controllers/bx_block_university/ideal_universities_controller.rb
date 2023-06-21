module BxBlockUniversity
    class IdealUniversitiesController < ApplicationController
      def ideal_universitat
        filters = {}
        filters[:gmat] = params[:gmat].to_i if params[:gmat].present?
        filters[:gre] = params[:gre].to_i if params[:gre].present?
        filters[:gpa] = params[:gpa].to_f if params[:gpa].present?
        filters[:tuition] = params[:tuition].to_f if params[:tuition].present?
        filters[:uni_type] = params[:uni_type] if params[:uni_type].present?
  
        universities = BxBlockUniversity::University.all
        universities = universities.where("gmat <= :gmat", filters) if params[:gmat].present?
        universities = universities.where("gre <= :gre", filters) if params[:gre].present?
        universities = universities.where("gpa <= :gpa", filters) if params[:gpa].present?
        universities = universities.where("tuition <= :tuition", filters) if params[:tuition].present?
        universities = universities.where("LOWER(country_name) LIKE ?", "%#{params[:country_name].downcase}%") if params[:country_name].present?
        
  
        render json: { universities: universities }
      end
    end
  end
  