# Write your code here.
def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2", 
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&",
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |phrase|
    if phrase.length > 140
      puts word_substituter(phrase)
    elsif phrase.length <= 140
      phrase
    end
  end
end