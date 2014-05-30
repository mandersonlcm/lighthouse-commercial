class StaticPagesController < ApplicationController
  def home
  end
  
  def about_us
  end
  
  def advantage
  end
  
  def recent_transactions
    @recent_transactions = RecentTransaction.all
  end
  
  def loan_programs
    
  end
  
  def contact_us
    @contact_message = ContactMessage.new    
  end
  
  def testimonials
    @testimonials = Testimonial.all
  end
  
  def legal_information
    
  end
end
