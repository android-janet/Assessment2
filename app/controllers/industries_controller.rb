class IndustriesController < ApplicationController
def index
  @industries = Industry.all
end

def new
  @industry = Industry.new
end

def create
  @industry = Industry.new(industry_params)
  if @industry.save
    flash[:notice] = "INDUSTRY WAS CREATED SUCCESSFULLY."
    redirect_to industry_path(@industry)
  else
    render :new
  end
end


private
def industry_params
  params.require(:industry).permit(:name, :description)
end

end
