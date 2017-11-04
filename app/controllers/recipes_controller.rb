require 'json/ext'
require 'will_paginate/array'

class RecipesController < ApplicationController

  def home
  end

  def index
    @search_string = params[:search]

    if @search_string == nil || @search_string == " "
      return @recipes = nil
    else
      return @recipes = EdamamApiWrapper.list_recipes(@search_string).paginate(page: params[:page], per_page: 10)
    end
  end

  def show
    if @recipe == nil
      #Is a flash message needed here?
      render_404
    else
      @recipe = EdamamApiWrapper.show_recipe(params[:uri])
    end
  end

end
