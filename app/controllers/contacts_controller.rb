class ContactsController < ApplicationController
  def index
    redirect_to :action => 'index', :controller => 'thankyou'
  end

  def send_mail
    #Add contact details to DB and send email
    @contact = Contact.new(params[:email])
    if @contact.save
      flash[:notice] = "Successfully contacted the band."

      Notifier::deliver_contact_email(params[:email])
      redirect_to :action => 'index'
    else
      render :action => 'index'
    end
  end

end
