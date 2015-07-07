class AttributesController < ApplicationController

  def index
    @student_attributes = Attribute.all

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
