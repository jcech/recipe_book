class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('index.html.erb')
  end

  def new
    @tags = Tag.all
    @recipe = Recipe.new
    render('new.html.erb')
  end

  def create
    @recipe = Recipe.create(params[:recipe])
    Tag.where(:id => params[:tags_id]).each do |tag|
      @recipe.tags << tag
    end
    redirect_to("/recipes")
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('show.html.erb')
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "Your terrible recipe has been destroyed"
    redirect_to("/recipes")
  end

  def edit
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    tags = Tag.all
    @recipe.tags.delete(tags)
    @recipe.update(params[:recipe])
    Tag.where(:id => params[:tags_id]).each do |tag|
      @recipe.tags << tag
    end
    render("show.html.erb")
  end
end
