class Trainer < ActiveRecord::Base
has_many :sessions
has_many :clients, through: :sessions
end