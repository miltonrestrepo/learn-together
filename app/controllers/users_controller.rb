class UsersController < ApplicationController
    
 def index
  @users = User.all
 end

 def new
  @user = User.new
 end

 def create
   user = User.new
   user.picture = params[:user][:picture]
   user.first_name = params[:user][:first_name]
   user.last_name = params[:user][:last_name]
   user.gender = params[:user][:gender]
   user.age = params[:user][:age]
   user.street_address = params[:user][:street_address]
   user.city = params[:user][:city]
   user.state = params[:user][:state]
   user.country = params[:user][:country]
   user.nationality = params[:user][:nationality]
   user.native_language = params[:user][:native_language]
   user.interested_language1 = params[:user][:interested_language1]
   user.language1_level = params[:user][:language1_level]
   user.interested_language2 = params[:user][:interested_language2]
   user.language2_level = params[:user][:language2_level]
   user.introduction = params[:user][:introduction]
   user.disable = params[:user][:disable]
   user.save
  redirect_to users_path
 end

 def edit	
  @user = User.find(params[:id])
 end

 def update
   user.picture = params[:user][:picture]
   user.first_name = params[:user][:first_name]
   user.last_name = params[:user][:last_name]
   userr.gender = params[:user][:gender]
   user.age = params[:user][:age]
   user.street_address = params[:user][:street_address]
   user.city = params[:user][:city]
   user.state = params[:user][:state]
   user.country = params[:user][:country]
   user.nationality = params[:user][:nationality]
   user.native_language = params[:user][:native_language]
   user.interested_language1 = params[:user][:interested_language1]
   user.language1_level = params[:user][:language1_level]
   user.interested_language2 = params[:user][:interested_language2]
   user.language2_level = params[:user][:language2_level]
   user.introduction = params[:user][:introduction]
   user.disable = params[:user][:disable]
   user.save
  redirect_to users_path
 end
 
 def delete
   user = User.find(params[:id])	
   user.destroy
  redirect_to '/users'
 end

end
