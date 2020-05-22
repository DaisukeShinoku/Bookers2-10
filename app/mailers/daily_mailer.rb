class DailyMailer < ApplicationMailer
    def daily(user)
        @user = user
        mail to: user.email, subject: "Yeah!"
    end
end
