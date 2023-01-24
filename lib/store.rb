class NotNegativeValidator < ActiveModel::Validator
  def validate(record)
    if (record.annual_revenue > 0) 
      record.errors.add :annual_revenue, "invalid annual revenue"
    end
  end
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { greater_than: 2}, allow_blank: false
  validates :annual_revenue, numericality: { only_integer: true }, 
  validates_with NotNegativeValidator
end
