class PagesController < ApplicationController
  def home
    cookies.signed[:mi_primera_cookie] = "Hola mundo"
  end
end
