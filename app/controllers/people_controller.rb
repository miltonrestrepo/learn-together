class PeopleController < ApplicationController
    
 def index
  @people = Person.all
 end

 def new
  @person = Person.new
 end

 def create
   person = Person.new
   person.picture = params[:person][:picture]
   person.first_name = params[:person][:first_name]
   person.last_name = params[:person][:last_name]
   person.gender = params[:person][:gender]
   person.age = params[:person][:age]
   person.street_address = params[:person][:street_address]
   person.city = params[:person][:city]
   person.state = params[:person][:state]
   person.country = params[:person][:country]
   person.nationality = params[:person][:nationality]
   person.native_language = params[:person][:native_language]
   person.introduction = params[:person][:introduction]
   person.disable = params[:person][:disable]
   person.save
  redirect_to people_path
 end

 def edit	
  @person = Person.find(params[:id])
 end

 def update
   person = Person.new
   person.picture = params[:person][:picture]
   person.first_name = params[:person][:first_name]
   person.last_name = params[:person][:last_name]
   person.gender = params[:person][:gender]
   person.age = params[:person][:age]
   person.street_address = params[:person][:street_address]
   person.city = params[:person][:city]
   person.state = params[:person][:state]
   person.country = params[:person][:country]
   person.nationality = params[:person][:nationality]
   person.native_language = params[:person][:native_language]
   person.introduction = params[:person][:introduction]
   person.disable = params[:person][:disable]
   person.save
 end
 
 def delete
   person = Person.find(params[:id])	
   person.destroy
  redirect_to '/people'
 end
    
end
