class User < ActiveRecord::Base
  include IdentityCache

  has_many :photographs
  has_many :collections

  cache_has_many :photographs
  cache_has_many :collections

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
