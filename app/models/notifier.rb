class Notifier < ActionMailer::Base
  include ActionView::Helpers::SanitizeHelper
  def feedback_comments(sender, text)
    recipients "support@23we.com"
    subject    "Comments/Feedback"
    body       :comments_text => text, :sender => sender
  end

end
