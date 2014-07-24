# Given a sentence
# loop through the sentence (each word)
#
# Rules:
# 1. if word = word in bad_words, remove from sentence
# 2. if word has a "ly" or "ing" ending, remove the ending
# 3. if the above don't apply to word, place a random word from
#    doge_words in front of the word

def very_doge (msg)
  doge_very_words = ["very", "much"]
  doge_words = ["much","such","wow","so","many","amaze","very","excite"]
  bad_words = ["it","he","they","we","us","me","him","her","has","have","are","is","was","were","be","become","became"]

  msg_arr = msg.downcase.split(" ")
  doge_msg_arr = []

  msg_arr.each do |word|
    if bad_words.index(word) == nil
      if rand(3) == 1
        doge_msg_arr.push(doge_words[rand(8)])
      end
      if word.slice(-3, 3) == "ing"
        changed = word.slice(0, (word.length-3)).insert(-1, "e")
        doge_msg_arr.push(doge_very_words[rand(2)])
        doge_msg_arr.push(changed)
      else
        doge_msg_arr.push(word)
      end
    end
  end

  doge_msg = doge_msg_arr.join(" ")

  doge_msg
end

print "
░░░░░░░░░▄░░░░░░░░░░░░░░▄░░░░
░░░░░░░░▌▒█░░░░░░░░░░░▄▀▒▌░░░
░░░░░░░░▌▒▒█░░░░░░░░▄▀▒▒▒▐░░░
░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐░░░
░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐░░░
░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌░░░
░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒▌░░
░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐░░
░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌░
░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌░
▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒▐░
▐▒▒▐▀▐▀▒░▄▄▒▄▒▒▒▒▒▒░▒░▒░▒▒▒▒▌
▐▒▒▒▀▀▄▄▒▒▒▄▒▒▒▒▒▒▒▒░▒░▒░▒▒▐░
░▌▒▒▒▒▒▒▀▀▀▒▒▒▒▒▒░▒░▒░▒░▒▒▒▌░
░▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▄▒▒▐░░
░░▀▄▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▄▒▒▒▒▌░░
░░░░▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀░░░
░░░░░░▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀░░░░░
░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▀▀░░░░░░░░"

print very_doge("Dude I don't even know what is going on")
