class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    before_action :find_user_article_history, only: [:show]

    def index
        render(json: {
            'status' => 'ok', 
            'users' => User.all()})
    end

    def show
        render(json: {
            'status' => 'ok', 
            'user_data' => @user,
            'article_count' => find_user_article_count,
            'oldest_article' => "Hello World",
            'newest_article' => "Goodbye World",
            'article_history' => @user_articles
        })
    end

    def create
        @user = User.new(user_params)
    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def find_user_article_history
        @user_articles = []
        @articles = Article.all

        @articles.each do |article|
            if article.user_id == @user.id 
                @user_articles << article
            end
        end

        @user_articles
    end

    def gather_article_dates
        
    end

    def find_user_article_count 
        @user_articles.length()
    end

    def find_user_oldest_article
    end

    def find_user_newest_article 
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
