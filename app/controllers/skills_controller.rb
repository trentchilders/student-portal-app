class SkillsController < ApplicationController

  def index
  end

  def new
  end
    
  def create  
  end

  def show
  end

  def edit
  end

  def update
    Unirest.patch("http://localhost:3000/students.json", headers:{ "Accept" => "application/json" }, parameters:{ skill_name: params[:skill_name]}).body
  end

  def destroy
  end
  

end
