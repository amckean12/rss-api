class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    before_action :find_user_article_history, only: [:show]

    def index
        @users = User.all
        if @users 
            render(json: {
                'status' => 'ok', 
                'users' => @users
            })
        else
            render json: {
                status: 500,
                errors: ['no users found']
              }
        end 
    end

    def show
        @user = User.find(params[:id])
        if @user    
            render(json: {
                'status' => 'ok', 
                'user_data' => render_user_data,
                'article_count' => render_user_article_count,
                'article_count_img' => render_user_article_count_with_image,
                'oldest_article' => render_user_oldest_article,
                'newest_article' => render_user_newest_article,
                'article_history' => @user_articles
            })
        else
            render json: {
                status: 500,
                errors: ['user not found']
              }
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            login!
            render json: {
                status: :created,
                'user_data' => render_user_data,
                'article_count' => render_user_article_count,
                'article_count_img' => render_user_article_count_with_image,
                'oldest_article' => render_user_oldest_article,
                'newest_article' => render_user_newest_article,
                'article_history' => @user_articles
            }
        else 
            render json: {
                status: 500,
                errors: @user.errors.full_messages
            }
        end
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
                generate_display_date(article)
            end
        end
        @user_articles
    end

    def generate_display_date(article)
        display_time = article.published_date.strftime("%d/%m/%Y %I:%M %p") 
        article.display_date = display_time
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

    def render_user_article_count_with_image 
        article_img_count = 0
        
        @user_articles.each do |article| 
            if article.image == true 
                article_img_count = article_img_count + 1
            end
        end
        article_img_count
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
