class ContactController < ApplicationController

  def contact_form
    ContactMailer.deliver_contact_form(params)
    flash[:notice] = "Your Message Has Been Delivered!  Thanks!"
    render :action => :index
  end

end
