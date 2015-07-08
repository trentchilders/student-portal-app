class Student

attr_accessor :first_name, :last_name, :id, :email, :phone_number, :short_bio, :linkedin, :twitter, :blog_site, :resume, :github, :photo, :start_date, :end_date, :degree, :university_name, :details, :job_title, :company_name

  def initialize(hash)
      @first_name = hash["first_name"]
      @last_name = hash["last_name"]
      @email = hash["email"]
      @phone_number = hash["phone_number"]
      @short_bio = hash["short_bio"]
      @linkedin = hash["linkedin"]
      @twitter = hash["twitter"]
      @blog_site = hash["blog_site"]
      @resume = hash["resume"]
      @github = hash["github"]
      @photo = hash["photo"]
      @id = hash["id"]
      @start_date = hash["start_date"]
      @end_date = hash["end_date"]
      @degree = hash["degree"]
      @university_name = hash["university_name"]
      @details = hash["details"]
      @job_title = hash["job_title"]
      @company_name = hash["company_name"]
  end
















end