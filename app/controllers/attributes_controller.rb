class AttributesController < ApplicationController

  def index
    @student_attributes = Attribute.all

  end




end
