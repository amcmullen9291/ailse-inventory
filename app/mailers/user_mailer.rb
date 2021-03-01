class UserMailer < ActionMailer::Base
    default :from => "Status@AisleInventory.com"

 def activity_report
    mail(:to => "BreededShelter@protonmail.com", :subject => "Store Activity")
 end