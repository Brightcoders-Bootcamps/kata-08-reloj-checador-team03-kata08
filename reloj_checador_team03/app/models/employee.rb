class Employee < ApplicationRecord
  validates :name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :private_number, numericality: { only_integer: true }

    def self.search(text)
        if text.blank?  # blank? covers both nil and empty string
          all
        else
          where('name LIKE ? or last_name LIKE ? or email LIKE ?', "%#{text}%", "%#{text}%", "%#{text}%")
        end
    end
end
