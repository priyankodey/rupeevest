class StaticPagesController < ApplicationController

  def invest_button
     redirect_to "https://www.fundsindiaadvisor.com/content/jsp/MyWealth/MyWealthLogin.jsp"    
  end


  def investor_details
    @investor = Investor.new(investor_params)

    respond_to do |format|
      if @investor.save       
        @investor.user_id = current_user.id 
        current_user.status = 2
        current_user.save
        @investor.save
        format.html { redirect_to :back, :flash => { :notice_invest => "You wiil received an email shortly" }  }
        #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        format.json { render action: 'show', status: :created, location: @investor }
      else
        format.html { render action: 'new' }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end    
  end


  def investor_details_elss
      @investor_elss = ElssContact.new(elss_params)
      if @investor_elss.save
        redirect_to :back
      end
  end

  def investor_home_contact
      @investor_home = HomeContact.new(home_params)
      if @investor_home.save
          redirect_to risk_profiling_path
      end
  end

  def index
      @investor = Investor.new
      @investor_home = HomeContact.new
      @contact = Contact.new
  end

  def offer    
  end

  def invest
  end

  def blog_home
  end

  def blog_single
  end

  def contact
    @contact = Contact.new
  end

  def error
  end

  def pricing
  end

  def team
  end

  def risk_profiling    
  end

  def return_expectation    
  end

  def research    
  end

  def academics    
  end

  def sign_in    
  end

  def sign_up    
  end

  def dashboard    
  end

  def help    
  end

  def objective    
  end

  def tax_efficient  
    @investor_elss = ElssContact.new  
  end

  def safety    
  end

  def testimonials    
  end

  def details    
  end

  def top_funds    
  end

  def investor_params
      params.require(:investor).permit(:name, :email, :number)
  end

  def elss_params
      params.require(:investor).permit( :email, :mobile, :name, :kmobile, :kname)
  end

  def home_params
      params.require(:investor).permit(:age, :earn, :appetite)
  end

end
