class Map < ActiveRecord::Base
  belongs_to :character
  has_many :map_livingbeings

  after_create :set_map_objects

  def self.init_map(character)

  	return init_map = character.maps.create(
  		category:'normal',
  	)
  end

  private

  def set_map_objects
  	MapLivingbeings.init(self)
  end


end
