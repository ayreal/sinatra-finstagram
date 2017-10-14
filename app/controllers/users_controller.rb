class UsersController < ApplicationController
  get '/users' do
    @users = User.all
    erb :'/users/index'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end


  get '/users/:id/photos/new' do
    @user = User.find(params[:id])
    @tags = Tag.all
    erb :'photos/new'
  end

  post '/users/:id/photos' do
    binding.pry
    
  end

end
