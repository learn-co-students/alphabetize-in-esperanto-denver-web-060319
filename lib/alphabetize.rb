require 'pry'

def alphabetize(arr)
  # code here
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |word|
  	word.split('').map do |char|
		esperanto.index(char)
  	end

  end

end