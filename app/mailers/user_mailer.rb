class UserMailer < ActionMailer::Base
    default :from => "BreededShelter@protonmail.com"

 def activity_report
    mail(:to => "amcmullen9291@gmail.com", :subject => "Store Activity")
 end


 def aisle_inventory
   mail(to: 'amcmullen9291@gmail.com', subject: 'Inventory Activity')
 end

end