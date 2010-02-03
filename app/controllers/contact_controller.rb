class ContactController < ApplicationController

  def contact_form
    ContactMailer.deliver_contact_form(params)
    render :nothing => true
  end

end
