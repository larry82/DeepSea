class MapIncident < ActiveRecord::Base
  belongs_to :map
  belongs_to :incident
end
