class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness=>{:scope => "dob"}
  has_many(:characters, :class_name=>"Character", :foreign_key => "actor_id")
  belongs_to(:movie, :class_name=>"Movie", :foreign_key => "movie_id")

end
