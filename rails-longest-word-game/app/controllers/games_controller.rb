require 'json'
require 'open-uri'
class GamesController < ApplicationController


  def new
    @letters = generate_grid(10)
  end

  def score
    @answer = params[:word]
    @letters_answer = params[:word].split
    @grid_letters = params[:grid_letters].split
    @english_word = dictionary(@answer)
    @grid_word = included?(@answer, @grid_letters)
    @result = result(@answer)

  end

  private

  # def inside_grid?(word, letters)
  #   word.chars.all? { |letter| word.count(letter) <= letters.count(letter.capitalize) }
  # end

  def included?(attempt, grid)
    attempt_array = attempt.upcase.split("")
    attempt_hash = Hash.new(0)
    attempt_array.each { |letter| attempt_hash[letter] += 1 }
    grid_hash = Hash.new(0)
    grid.each { |letter| grid_hash[letter] += 1 }
    attempt_hash.all? { |key, value| value <= grid_hash[key] }
  end


  def dictionary(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word.upcase}"
    json_serialized = open(url).read
    json = JSON.parse(json_serialized)
    return json["found"]
  end

  def generate_grid(grid_size)
    grid = Array('A'..'Z')
    Array.new(grid_size) { grid.to_a[rand(26)] }
  end

  def result(word)
    word.size**2
  end

end
