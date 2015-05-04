#TODO
#create method that will read the file
#split and put each line on the file into an array
#compare each line to my arrays in the following orders
#Horizontal words from left to right in your grid
#Horizontal words from right to left in your grid
#Vertical words from top to bottom in your grid
#Vertical words from bottom to top in your grid
#Diagonal words from left to right in your grid
#Diagonal words from right to left in your grid
class WordSearch
	def initialize()		
	end

	def grid_size(a)
		grid_size = a * a
		alphabet = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z"#create alphabet
		alphabet_array = alphabet.split(',')#split alphabet
		grid_array = []#create the grid array

		grid_size.times do |k|
			grid_array.push(alphabet_array.sample)#populate array with random order of letters
		end

		each_line = Math.sqrt(grid_array.length)#divide to make actual grid
		oraganised_grid = grid_array.each_slice(each_line).to_a
	
		return oraganised_grid
	end

	def left_to_right(file)
		 #read file and write each letter to an array
		 File.open(file).each do
		 	words = line.split(' ')
		 end

		 	return words

	end
		
end
a = WordSearch.new()
puts a.grid_size(5).inspect


