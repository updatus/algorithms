def permute(input_string)
  return [input_string] if input_string.size == 1

  arr = []
  for seed in permute(input_string[0...input_string.size-1])
    (0..input_string.size-1).each do |n|
      word = (seed[0,n] + input_string[-1] + seed[n..-1])
      arr << word unless arr.include?(word)
    end
  end
  return arr
end
