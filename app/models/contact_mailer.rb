class ContactMailer < ActionMailer::Base
  
  def contact_form(params)
    recipients "shannonmrush@gmail.com"
    from        "shannon@shannonmrush.com"
    subject     "Message from shannonmrush.com"
    body        :name => params[:name], :email => params[:email], :message => params[:message]
  end

end
