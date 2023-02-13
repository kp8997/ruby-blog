# crud with article
class ArticlesController < ApplicationController
  before_action :set_article, only: %i[destroy edit update show]

  def show; end

  def index
    @articles = Article.all
  end

  def edit; end

  def new
    @article = Article.new # ? clear it may occur error
    puts @article.errors.full_messages # ?
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'Article was created successfully'
      redirect_to article_path(@article)
    else
      puts 'Article was not created successfully'
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article was updated successfully'
      redirect_to articles_path
    else
      render 'edit', status: :ok
    end
  end

  def destroy
    puts 'check delete'
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
