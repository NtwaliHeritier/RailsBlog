class ArticlesController < ApplicationController
    include ArticlesHelper
    def index
        @articles=Article.all
    end

    def show
        @article=Article.find(params[:id])
    end

    def new
        @article=Article.new
    end

    def create
        @article=Article.new(article_param)
        @article.save
        redirect_to articles_path
    end

    def destroy
        @article=Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    def edit
        @article=Article.find(params[:id])
    end

    def update
        @article=Article.find(params[:id])
        @article.update(article_param)
        redirect_to articles_path
    end
end
