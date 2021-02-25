class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def self.search(text)
      if text.blank?  # blank? covers both nil and empty string
        all
      else
        where('name LIKE ? or lastname LIKE ? or username LIKE ? or email LIKE ?', "%#{text}%", "%#{text}%", "%#{text}%", "%#{text}%")
      end
  end
end
