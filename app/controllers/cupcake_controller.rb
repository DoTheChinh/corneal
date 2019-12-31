class CupcakesController < ApplicationController
  get "/cupcakes" do
    @cupcake = Cupcake.all
    erb :"cupcakes/index"
  end

  get "/cupcakess/new" do
    erb :"cupcakess/new"
  end

  get "/cupcakes/:id" do
    @cupcake = Cupcake.find(params[:id])
    erb :"cupcakes/show"
  end

  post "/cupcakes" do
    cupcake = Cupcake.create(params[:cupcake])
    redirect '/cupcakess/#{cupcake.id}'  
  end
  get "/cupcakes/:id/edit" do
      @cupcake = cupcake.find(params[:id])
      erb :"cupcakes/edit"  
  end

  patch "/cupcakes/:id" do
    cupcake= Cupcake.find(params[:id])
    cupcake.update(params[:cupcake])
    redirect "/cupcakes/#{cupcake.id}"  
  end
  delete "/cupcakes/:id" do
      cupcake = Cupcake.find(params[:id])
      cupcake.destroy
      redirect "/cupcake"
  end
end
