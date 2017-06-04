class Comment < ActiveRecord::Base
  belongs_to :helps
  belongs_to :user
end
