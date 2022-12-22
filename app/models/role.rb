class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    # arr = []
    # self.auditions.each do |audition|
    #     arr << audition.actor
    # end
    # arr
    self.auditions.pluck(:actor)
  end

  def locations
    self.auditions.pluck(:location)
  end

  def lead
    self.auditions.find_by(hired: true) || 'no actor has been hired for this role'
  end

  def understudy
    self.auditions.where(hired: true)[1] || 'no actor has been hired for understudy for this role'
  end
end