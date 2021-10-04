class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, , :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable

         def timeout_in
          return 1.year if admin?
          1.days
         end

         has many :messages

end
