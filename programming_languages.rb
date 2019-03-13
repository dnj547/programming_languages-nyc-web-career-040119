require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = type_hash
        style_array = []
        style_array << style
        new_hash[language][:style] = style_array
      end
    end
  end
  new_hash
end
