# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
<<<<<<< HEAD
  final_hash = {}
  YAML.load_file(file_path).each do |key,value|
    final_hash[key] = {}
    final_hash[key][:english] = value[0]
    final_hash[key][:japanese] = value[1]
  end 
 final_hash
=======
  emoticons = YAML.load_file("./lib/emoticons.yml")
  
 # binding.pry
>>>>>>> 4e653a88af562e095a3cd541f5853e24f2759bf7
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  load_library(file_path).each do |key, value|
    if value[:japanese] == emoticon
      return key
    end 
  end 
  return "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  load_library(file_path).each do |key, value|
    if value[:english] == emoticon 
      return value[:japanese]
    end 
  end 
  return "Sorry, that emoticon was not found"
end