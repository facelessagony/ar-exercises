class BetweenValidator < ActiveModel::Validator
  def validate(record)
    if (40 < record.hourly_rate < 200) 
      record.errors.add :hourly_rate, "invalid hourly rate"
    end
  end
end


class Employee < ActiveRecord::Base
  belongs_to :store, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates_with BetweenValidator
  
  #validates :
end

