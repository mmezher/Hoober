class User < ActiveRecord::Base
  validates :name, format: { with: /[a-zA-Z0-9]+\@[a-zA-Z0-9]+.edu\z/,
    message: "only allows letters" }
end
