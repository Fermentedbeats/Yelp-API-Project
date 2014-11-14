class Business < ActiveRecord::Base
  # validates :rating, numericality: { less_than: 2, message: "must be less than 2" }
  I18n.enforce_available_locales = false
  belongs_to :user
  def render(business)
    <<-STRING

    STRING
  end

end
