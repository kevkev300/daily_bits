class TestMailer < ApplicationMailer
  def hello
    mail(
      subject: 'Hello from Postmark',
      to: 'kevin@liebholz.eu',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: 'true',
      message_stream: 'outbound'
    )
  end
end
