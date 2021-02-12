class Branch < ApplicationRecord
    def self.search(text)
        if text.blank?  # blank? covers both nil and empty string
          all
        else
          where('name LIKE ? or address LIKE ?', "%#{text}%", "%#{text}%")
        end
    end
end
