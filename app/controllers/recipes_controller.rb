class RecipesController < ApplicationController
  before_action :set_recipe, only:[:show, :edit, :update, :destroy]

  # GET /recipes
  # =link_to .. recipes_path
  def index
    @recipes = Recipe.order created_at: :desc
  end
  # Implicitly renders index.html.haml

  # GET /recipes/new
  # =link_to .. new_recipe_path
  def new
    @recipe = Recipe.new
  end
  # Implicitly renders new.html.haml

  # POST /recipes
  # =form_for @recipe do ..            <- if new_record
  def create
    @recipe = Recipe.new( recipe_params )
    if @recipe.save
      redirect_to @recipe, notice:'Successfully created recipe.'
    else
      render 'new'
    end
  end

  # GET /recipes/:id
  # redirect_to @recipe
  # =link_to .. recipe_path( @recipe )
  def show
  end
  # Implicitly renders show.html.haml

  # GET /recipes/:id/edit
  # =link_to .. edit_recipe_path( @recipe )
  def edit
  end
  # Implicitly renders edit.html.haml

  # PATCH|PUT /recipes/:id
  # =form_for @recipe do ..            <- if persisted
  def update
    if @recipe.update( recipe_params )
      redirect_to @recipe, notice:'Successfully updated recipe.'
    else
      render 'edit'
    end
  end

  # DELETE /recipes/:id
  # =link_to .. recipe_path( @recipe ), method: :delete
  def destroy
    @recipe.destroy
    redirect_to recipes_path, notice:'Successfully deleted recipe.'
  end

  private
    def set_recipe
      @recipe = Recipe.find( params[:id] )
    end

    def recipe_params
      params.require( :recipe ).permit( :title, :description )
    end
end
