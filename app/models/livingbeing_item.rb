class LivingbeingItem < ActiveRecord::Base
  belongs_to :livingbeing
  belongs_to :item
end
