require 'pry'
def reformat_languages(languages)
  new_hash = {}
  style_array = []
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      new_hash[language] = type_hash
      style_array << style
      new_hash[language][:style] = style_array
    end
  end
  new_hash
end
