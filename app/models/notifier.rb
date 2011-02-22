class Notifier < ActionMailer::Base
  def contact_email(email_params)
        # You only need to customize @recipients.
#        @recipients = "admin@empireband.co.uk"
        @recipients = "enquiries@empireband.co.uk"
        @from = email_params[:emailaddress]
        @subject = email_params[:name] + ": " + email_params[:subject] + ": " + email_params[:contactnumber]
        @sent_on = Time.now
        @body["email_body"] = email_params[:message]
        @body["email_name"] = email_params[:name]
        @body["email_from"] = email_params[:emailaddress]
        content_type "text/html"
    end

end
