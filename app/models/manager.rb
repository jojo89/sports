class Manager < ActiveRecord::Base
  # Remember to create a migration!
  has_many :leagues
  
  def self.authenticate(email,password)
    @user = Manager.find_by_email(email)
    if @user == nil 
      return nil
    elsif @user.password == password
      return @user
    else
      return nil
    end
   
  end
end  
