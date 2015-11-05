class Datum < ActiveRecord::Base
  belongs_to :user
  attachment :csv
end
