class ThanksMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail to: user.email, subject: "Welcome to Bookers!"
  end

    def notify_user
        default to: -> { User.pluck(:email) }
        mail(subject: "everyday Bookers!yay!")
    end
end
