class TwitterAccountsController < ApplicationController

    before_action :require_user_logged_in!
    before_action :set_twitter_account, only [:destroy]

    def index
        @twitter_accounts = Current.user.twitter_accounts
    end

    def destroy
        @twitter_accounts = Current.user.twitter_accounts.find(params[:id])
        @twitter_accounts.destroy
        redirect_to twitter_accounts_path, notice: "Twitter account disconnected @#{@twitter_account.username}"
    end

    private
    
    def set_twitter
        @twitter_account = Current.user.twitter_accounts.find(params[:id])
    end

end