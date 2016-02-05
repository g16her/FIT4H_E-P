class SessionsController < ApplicationController
 	
  def create
  	
  		if user = User.authenticate( params[ :email] , params[ :password ]) ## übergeben wir die email und password
  		session[ :user_id ] = user.id
      flash[ :notice] = "Erfolgreich"
  		redirect_to root_path

  	else
       flash.now[ :alert ] = "Anmelden fehlgeschlagen"
  		render "new"  
     
  	end



  	
  end

  def destroy
    session[ :user_id ] = nil
    redirect_to root_path , notice: "Erfolgreich abgemeldet"
  end
  def new

  end





end
