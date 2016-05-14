class Registration < ActiveRecord::Base
  validates :company, :name, :duty, :telephone, :email, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |row|
        csv << row.attributes.values_at(*column_names)
      end
    end
  end
end
