class ArticlesController < ApplicationController
  def new
    render 'articles/new'
  end

  def destroy
    @article = Article.find params[:id]
    @article.destroy
    redirect_to articles_path
  end

  def index
    @article = Article.all.order(updated_at: "desc").limit(10)
    render 'articles/index'
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    @article = Article.find params[:id]
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def create
    @article = Article.new(article_params)
#    @article.save
    if @article.save
      redirect_to article_path(@article)
    else
        redirect_back(fallback_location: new_article_path)
    end
  end

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def show
    @article = Article.find params[:id]
    render 'articles/show'
  end

  def output
    @article = Article.all.order(updated_at: "desc")
  end

end
