class UserMailer < ActionMailer::Base
    default from: "The Trunksale <team@thetrunksale.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "Can’t wait to save up to 70% on #designerfashion. Thanks @teamtrunksale!"

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
