# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
	@candidates.each do |candidate|
		return candidate if candidate[:id] == id
	end
end

def experienced?(candidate)
	candidate[:years_of_experience] >= 2
end

# More methods will go below

def github?(candidate)
	candidate[:github_points] >= 100
end

def rubyPython(candidate)
	candidate[:languages].include? 'Ruby' || 'Python'
end

def applied(candidate)
	(Date.today candidate[:date_applied]) <= 15
end

def age?(candidate)
	candidate[:age] >= 18
end

# def ordered_by_qualifications
# 	@candidates.sort_by do |candidate|
# 		candidate[:years_of_experience]
# 	end
# end

# def ordered_by_qualifications
# 	@candidates.sort do |a,b|
# 	end
# end

def qualified_candidates(candidates)
	experienced?(candidate) && github?(candidate) && rubyPython(candidate) && applied(candidate) && age?(candidate)
end
