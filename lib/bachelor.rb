def get_first_name_of_season_winner(data, season)
  # code here
  answer = ""
  for i in 0...data[season].length
    if data[season][i].values.include?("Winner")
      puts data[season][i].values[0].split(" ")[0]
      answer = data[season][i].values[0].split(" ")[0]
    end
  end
  answer
end


def get_contestant_name(data, occupation)
  # code here
  answer = ""
  data.each do |x, y|
    for i in 0...y.length
      if data[x][i]["occupation"] == occupation
        answer = data[x][i]["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  # code here
  answer = 0
  data.each do |x, y|
    for i in 0...y.length
      if data[x][i]["hometown"] == hometown
        answer += 1
      end
    end
  end
  answer
end

def get_occupation(data, hometown)
  # code here
  answer = ""

  data.each do |x, y|
    for i in 0...y.length
      if data[x][i]["hometown"] == hometown
        answer = data[x][i]["occupation"]
        break
      end
    end
  end
  answer
end

def get_average_age_for_season(data, season)
  # code here
  ages = []

  for i in 0...data[season].length
      ages.push(data[season][i]["age"].to_f)
  end

  (ages.inject(0){|sum,x| sum + x } / ages.length).round
  # inject found at http://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
end
