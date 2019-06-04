class DateService < ActiveRecord::Base

  def self.get_created_at_COT(datetime)
    datetime.getlocal("-05:00")
  end
end
