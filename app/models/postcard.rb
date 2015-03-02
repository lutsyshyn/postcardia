class Postcard < ActiveRecord::Base
  belongs_to :user
  belongs_to :recepient, class: User
  
  def self.generate(params)
    user_id = params[:user].id
    recepient_id = (User.ids - [user_id]).sample
    create(
      user_id: user_id,
      recepient_id: recepient_id,
      identifier: ((0..9).to_a + ('A'..'Z').to_a).sample(8).join
      )
  end
end
