class Project < ActiveRecord::Base
<<<<<<< HEAD
  has_many :tasks
  validates :title, 
  presence: {message: '入力して下さい'},
  length: {minimum: 3, message:'短すぎます'}
=======
	has_many :tasks, dependent: :destroy
>>>>>>> fcd4a41bf851c77425e3cca268b1a2577f7bb543
end
