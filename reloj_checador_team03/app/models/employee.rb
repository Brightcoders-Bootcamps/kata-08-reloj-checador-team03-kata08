class Employee < ApplicationRecord
    def self.search(text)
        if text.blank?  # blank? covers both nil and empty string
          all
        else
          where('name LIKE ? or last_name LIKE ? or email LIKE ?', "%#{text}%", "%#{text}%", "%#{text}%")
        end
    end
end
