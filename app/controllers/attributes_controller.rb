class AttributesController < ApplicationController

  def index
    @student_attributes = []
    student_attribute_hashes = Unirest.get("http://localhost:3000/students.json").body
    student_attribute_hashes.each do |hash|
      @student_attributes << Student.new(hash)
    end
  end

  def show
    @student_attribute = Student.new(Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body)

    @education_array = []
    education_hashes = (Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body)["educations"]
    education_hashes.each do |hash|
      @education_array << Student.new(hash)
    end
  end

  def new

  end

  def create

  end

  def destroy

  end

  def update

  end


end
