# Homework1.

$VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

# Part 1
# http://ruby-doc.org/core-2.2.0/Regexp.html
def validate_email?(email)

	if ((email =~ $VALID_EMAIL_REGEX) != nil)
		return true
	else 
		return false
	end

end

def is_palindrome?(phrase)

if(phrase=='')
	return false
end

$juan=phrase.downcase.delete(' ')
$juan_alreve=phrase.downcase.reverse.delete(' ') 

if($juan == $juan_alreve)
	return true
else 
	return false
end
end


# Part 2
def max_sum_of_2(arr1, arr2)

	sumaarray1=(arr1).sum
	sumaarray2=(arr2).sum

	if (sumaarray1 == sumaarray2)
		return(0)
	elsif (sumaarray1 > sumaarray2)
		return (sumaarray1)
	elsif (sumaarray1 < sumaarray2)
		return(sumaarray2)
	else

	end


end

def word_frequency(words)
	
	h = Hash.new(0)
	words.each do |palabras|
		vector = palabras.downcase
		h[vector]+=1
	end
	valormax = h.values.max
	return h.key(valormax)
end

# Part 3
class FileAnalizer
	attr_accessor :file
def initialize (pepe)
	@file=pepe
end

def calculate_total_lines()
	f= File.open(@file, "r")
	if f
		return f.readlines.size()
	else
		return puts "no abrio el archivo"
	end
	f.close()
end

def max_word_line()
	f= File.new(@file, "r")
	if f
		h = Hash.new(0)
		f.each do |palabras|
			puts palabras.size

		end
	valormax = h.values.max	
	else
		return puts "no abrio el archivo"
	end

	f.close()
end
end