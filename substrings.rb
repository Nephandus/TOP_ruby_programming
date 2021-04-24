def substrings(word, dictionary)
    match_list = []
    match_score = {}
    
    dictionary.each do |string|
        match_list += word.downcase.scan(string)
    end

    match_list.each do |i|
        if (match_score.key?(i))
            match_score[i] += 1
        else
            match_score.store(i, 1)
        end
    end
    return match_score
end

#Neither was an interface specified nor any exception catching expected, so the below was just for demonstration.
string = "Howdy partner, sit down! How's it going?"
array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
pp substrings(string, array)