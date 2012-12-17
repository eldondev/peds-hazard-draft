class Report < ActiveRecord::Base
  attr_accessible :date, :description, :email, :latitude, :longitude, :name, :picfile
  def new
    @post = Report.new
    @post.name =  UUIDTools::UUID.timestamp_create.to_str
    puts @post
    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @post }
    end
  end
end
