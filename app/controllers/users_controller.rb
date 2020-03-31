class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    before_action :find_user_article_history, only: [:show]

    def index
        render(json: {
            'status' => 'ok', 
            'users' => User.all()
        })
    end

    def show
        render(json: {
            'status' => 'ok', 
            'user_data' => render_user_data,
            'article_count' => render_user_article_count,
            'oldest_article' => render_user_oldest_article,
            'newest_article' => render_user_newest_article,
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

    def render_user_data
        user = {
            'id': @user.id,
            'username': @user.username
        }
    end

    def render_user_article_count 
        @user_articles.length()
    end

    def render_user_oldest_article
        oldest_article = @user_articles.first

        @user_articles.each do |article|
            case article
            when oldest_article.published_date > article.published_date
                oldest_article = oldest_article
            else
                oldest_article = article
            end
        end
        oldest_article
    end

    def render_user_newest_article 
        newest_article = @user_articles.first

        @user_articles.each do |article|
            case article
            when newest_article.published_date < article.published_date
                newest_article = article
            else
                newest_article = newest_article
            end
        end
        newest_article
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
