require 'rspec'
require 'pry'

class String
  def total_words
    scan(/\w+/).count
  end

  def word_list
    final = Hash.new(0)
    scan(/\w+/) { |x| final[x] += 1 }
    final
  end
end

"- the quick brown fox / jumped over the lazy fox.".word_list

describe 'Word Reporter' do
  before do
    @str = "- the quick brown fox / jumped over the lazy fox."
  end

  it 'Counts words accurately' do
    expect(@str.total_words).to eq(9)
  end

  it 'Returns a hash that totals up word usage' do
    expect(@str.word_list).to eq({"the"=>2,
                                  "quick"=>1,
                                  "brown"=>1,
                                  "fox"=>2,
                                  "jumped"=>1,
                                  "over"=>1,
                                  "lazy"=>1}
                                )
  end
end