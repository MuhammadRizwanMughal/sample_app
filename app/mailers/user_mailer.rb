class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  default from: "rizu3661@gmail.com"
  def account_activation(user)
    @user=user
    mail to:user.email,subject: "account activation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user=user
    mail to: user.email,subject: "reset password"
  end
end
