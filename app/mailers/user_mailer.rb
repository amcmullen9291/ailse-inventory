class UserMailer < ActionMailer::Base
    default :from => "amcmullen9291@gmail.com"

 def activity_report
   @url  = 'http://[::1]:3000/logout'
    mail(:to => "BreededShelter@protonmail.com", :subject => "Store Activity")
 end


 def aisle_inventory
   @user = params[:user]
   @url  = 'http://[::1]:3000/login'
   mail(to: 'BreededShelter@protonmail.com', subject: 'Inventory Activity')
 end

end