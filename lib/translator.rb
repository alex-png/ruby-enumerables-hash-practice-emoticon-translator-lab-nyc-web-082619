require "yaml"
<<<<<<< HEAD


def load_library(yam)
  list = YAML.load_file(yam)
  hash = {:get_meaning =>{}, :get_emoticon =>{}}
 
   list.keys.each do |expression|
      x = list[expression][1]
      y = list[expression][0]
      hash[:get_meaning][x] = "#{expression}"
      hash[:get_emoticon][y] = "#{x}"
   end
  hash

=======


def load_library(yam)
  list = YAML.load_file(yam)
  hash = {:get_meaning =>{}, :get_emoticon =>{}}
 
   list.keys.each do |expression|
      puts list[expression][1]
   end
  print hash 
>>>>>>> 1cca5e0cc35a823aa2bc1092d1cbd9a39467b1a6
end
load_library("./lib/emoticons.yml")

def get_japanese_emoticon(yam, emo)
  
  list = load_library(yam)  
  check_ = list[:get_emoticon].keys
  
  if check_.include?(emo) != true
    return "Sorry, that emoticon was not found"
   else
     new = list[:get_emoticon][emo]
   end
  
end

def get_english_meaning(yam, emo)
  list = load_library(yam)
  check = list[:get_meaning].keys
  if check.include?(emo) != true
    return "Sorry, that emoticon was not found"
   else
    list[:get_meaning][emo]
  end  
end