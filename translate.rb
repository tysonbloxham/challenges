# Write a language translator.

# ABCDEFGHIJKLMNOPQRSTUVWXYZ
# AZYXEWVTISRQPNOMLKJHUGFDCB

# Using this converstion write a sentence in english that translates to this alphabet.
require 'rspec'

puts "Write out a sentence to translate."
sentence = gets.chomp

def translate(str)
  alphabet     = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  replacements = 'azyxewvtisrqpnomlkjhugfdcbAZYXEWVTISRQPNOMLKJHUGFDCB'
  str.tr(alphabet, replacements)
end

puts translate(sentence)

describe 'Translator' do
  it 'checks to see if translated correctly' do
  	string = "Things and stuff!"
    expect(translate(string)).to eq("Htinvj anx jhuww!")
  end
end