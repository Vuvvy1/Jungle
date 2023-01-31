class Sale < ApplicationRecord
  def finished?
    ends_on < Date.current
  end
  def Upcoming?
    starts_on > Date.current
  end
  def Active?
    !Upcoming? && !finished?
  end
end
