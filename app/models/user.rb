class User < ActiveRecord::Base
  validates :email, format: { with: /@stu\.pkuschool\.edu\.cn/,
    message: "请使用学生邮箱注册" }
  validates :username, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
