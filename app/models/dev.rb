class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    return true unless self.freebies.where("item_name = ?", item_name).length == 0
    false
  end

  def give_away(dev, freebie)
    if self.id == freebie.dev_id
      freebie.dev_id = dev.id
      freebie
    else
      "This is not yours to give away."
    end
  end
end
