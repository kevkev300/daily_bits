# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'hello@kevin-liebholz.me'
  layout 'mailer'
end
