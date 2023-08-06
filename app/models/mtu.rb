# frozen_string_literal: true

class Mtu < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable,
         :omniauthable
  has_one :owner
  has_many :companies, through: :owner
  has_many :company_branches, through: :companies
  has_many :products, through: :company_branches
  has_many :orders, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :staffs, dependent: :destroy
end
