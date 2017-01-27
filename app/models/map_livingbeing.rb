class MapLivingbeing < ActiveRecord::Base
  belongs_to :map
  belongs_to :livingbeing

	def self.init(map)
		livingbeing = Livingbeing.first
  		map.map_livingbeings.create(
  			livingbeing_id:livingbeing.id,
			name: livingbeing.name,
			info: livingbeing.info,
			atk: livingbeing.atk,
			hp: livingbeing.hp,
			def: livingbeing.def,
			exp: livingbeing.exp,
			captured_probability: livingbeing.captured_probability,
  		)
  	end	
end
