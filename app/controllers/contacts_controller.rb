class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @pages = Page.find(5)
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
