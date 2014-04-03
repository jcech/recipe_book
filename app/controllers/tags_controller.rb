class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render('index.html.erb')
  end

  def new
    @tag = Tag.new
    render('new.html.erb')
  end

  def create
    @tag = Tag.create(params[:tag])
    redirect_to("/tags")
  end

  def show
    @tag = Tag.find(params[:id])
    render('show.html.erb')
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Your awfully vague tag has been destroyed"
    redirect_to("/tags")
  end

  def edit
    @tag = Tag.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(params[:tag])
    render("show.html.erb")
  end
end
