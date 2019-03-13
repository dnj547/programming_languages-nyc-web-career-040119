require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      binding.pry
      new_hash[language] = type_hash
      new_hash[:style] = style
    end
  end
  new_hash
end
