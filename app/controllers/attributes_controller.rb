class AttributesController < ApplicationController

  def index
    @student_attributes = []
    student_attribute_hashes = Unirest.get("http://localhost:3000/students.json").body
    student_attribute_hashes.each do |hash|
      @student_attributes << Student.new(hash)
    end
  end

  def show
    @student_attribute = Attribute.find_by(params[:id])

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
