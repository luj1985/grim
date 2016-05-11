class Registration < ActiveRecord::Base
  validates :company, presence: true
  validates :name, presence: true
  validates :telephone, presence: true
  validates :email, presence: true
  validates :duty, presence: true
end
