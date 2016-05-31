# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry
@candidates.each do |candidate|
	puts experienced?(candidate)
end

# puts experienced?(@candidates[0])

puts find(5)	

# @candidates.each do |candidate|
# 	puts github?(candidate)
# end

# @candidates.each do |candidate|
# 	puts rubyPython(candidate)
# end

def qualified_candidates(candidate)
	potential_candidates = []
	@candidates.each do |candidate|
		potential_candidates << candidate if experienced?(candidate) && github?(candidate) && rubyPython(candidate) && applied(candidate) && age?(candidate)
	end
	potential_candidates
end

pp qualified_candidates()
