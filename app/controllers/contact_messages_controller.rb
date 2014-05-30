class ContactMessagesController < ApplicationController
  # GET /contact_messages
  # GET /contact_messages.json
  def index
    @contact_messages = ContactMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_messages }
    end
  end


  # GET /contact_messages/1/edit
  def edit
    @contact_message = ContactMessage.find(params[:id])
  end

  # POST /contact_messages
  # POST /contact_messages.json
  def create
    @contact_message = ContactMessage.new(params[:contact_message])
    if @contact_message.save
      ContactFormMailer.new_contact_us_message(@contact_message.email, @contact_message.content).deliver
      flash[:success] = "Thank you for contacting us. We will respond as soon as we possibly can"
      redirect_to root_url
    else
      flash[:error] = "We were unable to complete the contact form. Please email us at manderson@lighthouse-commercial.com"
      redirect_to contact_us_path
    end
  end


end
