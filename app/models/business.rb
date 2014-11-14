class Business < ActiveRecord::Base
  validates :rating, numericality: { less_than: 2, message: "must be less than 2" }


  def render(business)
    <<-STRING

    STRING
  end

end
