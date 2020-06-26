module ArticlesHelper
    def article_param
        params.require(:article).permit(:title, :body)
    end
end
