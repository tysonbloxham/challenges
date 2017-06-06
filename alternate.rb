@alpha = ["a", "b", "c"]
@numb = [1, 2, 3]
@comb = []

def alt
	0.upto(@alpha.length - 1) do |x|
		@comb << @alpha[x]
		@comb << @numb[x]
	end
end

alt
print @comb
