class AddDefaultUser < ActiveRecord::Migration
  def self.up
    user = User.create!( :first_name => 'Sheila', :last_name => "Chan", :email => 'sheilaaachan@gmail.com', :password => 'X0nami92' )
  end

  def self.down
    user = User.find_by_email( 'sheilaaachan@gmail.com' )
    user.destroy
  end
end
