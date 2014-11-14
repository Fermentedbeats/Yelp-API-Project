class User < ActiveRecord::Base
  validates :name, :uniqueness => true
  has_many :businesses


  I18n.enforce_available_locales = false

end
