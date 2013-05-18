class User < ActiveRecord::Base
  attr_accessible :name, :saldo, :telefono, :dni
  has_many :pets
end
