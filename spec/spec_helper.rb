require 'game/angry_rock'

def data_driven_spec(container)
 container.each do |element|
   yield element
 end
end
