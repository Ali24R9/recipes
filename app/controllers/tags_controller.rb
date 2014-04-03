class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render('/tags/index.html.erb')
  end

  def create
    params[:tag][:slug] = params[:tag][:name].parameterize
    @tag = Tag.create(params[:tag])

    if @tag.save
      redirect_to("/tags")
    else
      render('/tags/index.html.erb')
    end
  end

  def show
    @tag = Tag.find_by(:slug => params[:slug])
    render('tags/show.html.erb')
  end

  def update
    params[:tag][:slug] = params[:tag][:name].parameterize
    @tag = Tag.find_by(:slug => params[:slug])

    @tag.update(params[:tag])

    if @tag.update(params[:tag])
      redirect_to("/tags/")
    else
      render('/tags/edit.html.erb')
    end
  end

  def destroy
    @tag = Tag.find_by(:slug => params[:slug])
    @tag.destroy
    redirect_to('/tags')
  end
end
