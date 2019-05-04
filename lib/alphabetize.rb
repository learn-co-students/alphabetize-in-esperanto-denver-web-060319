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

###BAM. DONE. RUBY FUNDAMENTALS CONQUERED.
