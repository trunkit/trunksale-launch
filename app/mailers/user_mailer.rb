class UserMailer < ActionMailer::Base
    default from: "The Trunksale <team@thetrunksale.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "Can't wait to shop designer fashion from USA boutiques at up to 60% off. Excited for @teamtrunksale to launch."

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
