class Response < ActiveRecord::Base
  belongs_to :respondent, class_name: User
  belongs_to :answer 
end
