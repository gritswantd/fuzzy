def calculate_hash string
  results = []

  string.chars.each_with_index do |char, index|
    offset = (index * index)
    results << char.unpack('C').first + offset
  end
  result = results.pack('c*')

  collision_count = 0
  result.chars.each do |char|
    if char.inspect == "\xE5".inspect
      collision_count += 1
    end
  end
  if collision_count > 2
    raise 'ohno'
  end
  result
end
