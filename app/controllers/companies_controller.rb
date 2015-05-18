class CompaniesController < ApplicationController
def index
  @companies = Company.all
end

def new
  @industry = Industry.find_by_id(params[:id])
  @company = Company.new
end

def create
  @industry = Industry.find_by_id(params[:id])
  @company = Company.new(company_params)
  @company.id
  if @company.save
    flash[:notice] = "COMPANY WAS CREATED SUCCESSFULLY."
    redirect_to company_path(@company)
  else
    render :new
  end
end

def show
  @company = Company.find(params[:id])
  @industry = Industry.find(params[:industry_id])
end

def edit
  @company = Company.find_by_id(params[:id])
end

def update
  @company = Company.find_by_id(params[:id])

  if @company.update(company_params)
    flash[:notice] = "COMPANY WAS UPDATED SUCCESSFULLY."
    redirect_to companies_path
  else
    render 'edit'
  end
end

def destroy
  @company = Company.find_by_id(params[:id])
  @company.destroy
  redirect_to companies_path
  flash[:notice] = "COMPANY WAS DELETED."
end


private
def company_params
  params.require(:company).permit(:name, :description, :price, :industry_id)
end

end
