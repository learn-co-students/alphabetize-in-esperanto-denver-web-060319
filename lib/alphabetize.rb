require "pry"

def alphabetize(arr)

##ASSIGN EACH LETTER OF ESPERANTO A NUMBER VALUE.
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_array = alphabet.split("")
  alphabet_hash = {}
  alphabet_array.each_with_index do |char, i|
    alphabet_hash[char] = [i + 1]
  end

##CONVERT THE ARR TO AN ARRAY OF NUMBERS, BASED ON HASH ABOVE.
char_breakdown_array = []
  arr.map do |phrase|
    temp_array = phrase.chars
    char_breakdown_array << temp_array
  end
new_array = []

char_breakdown_array.each do |x|
  internal_array = []
  x.each do |y|
    y = alphabet_hash[y]
    internal_array << y
  end
  new_array << internal_array
end
###################################################
##DELETE THE NIL VALUES.
#new_array.each do |a| #array
  #a.delete_if do |element| #number, ind element.
    #  element == nil
    #end
#end
#################################################

##SORT THE ARRAY OF NUMBERS & CONVERT BACK INTO THE ORIGINAL ARRAY.
sorted_new_array = new_array.sort
transposed_array = []
sorted_new_array.each do |inner_array|
  temp_array = []
  inner_array.each do |element|
    if element == nil
      temp_array << " "
    else
    temp_array << alphabet_hash.key(element)
    end
  end

  joined_transposed_string = temp_array.join
  transposed_array << joined_transposed_string
end
transposed_array
#binding.pry

end


##At this point, we've made every character a number and removed the white
##spaces. Now we need to compare number to number.

########ESPERANTO ALPHABET

#ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

#["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

#Okay, so this is a weird situation. Let's think it through. How do we sort a
#word based on a different alphabet? Really, the question here is how do we
#sort a word based on the english alphabet? Then we can just input the esperanto
#version. Let's do some research.

######Need to be able to sort by..

#it looks as though .chars will be helpful, instead of .split('').

# the goal here is to go to the first element, ask it where... well shit idk. My mind is
# bit blown at the moment.
#sort into numbers, then use reglar sort...

#basically, convert the esperanto into numbers, based on the alphabet.

#I was going to convert hte damn thin into numbers, but how to handle numbers
#which are over 9? That negates this plan unfortunately, but let's see it through
# for fun.

####It looks as though the conversion to numbers method will work. Only I need to
##create some metadata for the original array, numbering each phrase. I will
##then return to that number at the end once it has been sorted.
##that or I need to figure out a way to place spaces back into the array phrases
##OR I can try not excluding the nils.

###3 options. Not bad.
