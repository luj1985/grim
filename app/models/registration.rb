class Registration < ActiveRecord::Base
  validates :company, presence: true
  validates :name, presence: true
  validates :telephone, presence: true
  validates :email, presence: true
  validates :duty, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |row|
        csv << row.attributes.values_at(*column_names)
      end
    end
  end
end
