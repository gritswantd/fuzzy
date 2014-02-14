def calculate_hash string
  results = []
  string.chars.each_with_index do |char, index|
    offset = (index * index)
    results << char.unpack('C').first + offset
  end
  result = results.pack('c*')
  result.chars.each do |char|
    if char.inspect == "\xE5".inspect
      raise 'ohno'
    else
    end
  end
  #result.unpack('B*').first.scan(/[01]{8}/).each do |bits|
  #puts "bits: #{bits}"
  #if bits.chars.count '1' == 8
  #raise 'ohno'
  #end
  #end
  result
end
