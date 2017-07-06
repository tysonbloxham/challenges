puts "Write out a sentence to translate to morse code."
sentence = gets.chomp.split("")

@morse = {
	"a" => "*-",
	"b" => "-***",
	"c" => "-*-*",
	"d" => "-**",
	"e" => "*",
	"f" => "--*-",
	"g" => "--*",
	"h" => "****",
	"i" => "**",
	"j" => "*---",
	"k" => "-*-",
	"l" => "*-**",
	"m" => "--",
	"n" => "-*",
	"o" => "---",
	"p" => "*--*",
	"q" => "*--*",
	"r" => "*-*",
	"s" => "***",
	"t" => "-",
	"u" => "**-",
	"v" => "***-",
	"w" => "*--",
	"x" => "-**-",
	"y" => "-*--",
	"z" => "--**"
}


def translate(str)
	str = str.map do |x|
	  @morse.fetch(x, x)
	end	
end

puts translate(sentence).join


















