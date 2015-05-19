class IndustriesController < ApplicationController
def index
  @industries = Industry.all
  @companies = Company.all
  @company = Company.find_by_id(params[:company_id])
end

def new
  @industry = Industry.new
end

def create
  @company = Company.find_by_id(params[:company_id])
  @industry = Industry.new(industry_params)
  @industry.id
  if @industry.save
    flash[:notice] = "INDUSTRY WAS CREATED SUCCESSFULLY."
    redirect_to industry_path(@industry)
  else
    render :new
  end
end

def show
  @company = Company.find_by_id(params[:company_id])
  @industry = Industry.find(params[:id])
end

def edit
  @industry = Industry.find(params[:id])
end

def update
  @company = Company.find_by_id(params[:company_id])
  @industry = Industry.find(params[:id])
  if @industry.update(industry_params)
    flash[:notice] = "INDUSTRY WAS UPDATED SUCCESSFULLY."
    redirect_to industries_path
  else
    render 'edit'
  end
end

def destroy
  @industry = Industry.find(params[:id])
  @industry.destroy
  redirect_to industries_path
  flash[:notice] = "INDUSTRY WAS DELETED."
end



private
def industry_params
  params.require(:industry).permit(:name, :description)
end

end
