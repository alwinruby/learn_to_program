def roman_to_integer roman
  values = {'i' => 1, 'v' => 5, 'x' => 10,
              'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
  total = 0
  prev = 0
  roman.reverse.each_char do |c_or_C|
    c = c_or_C.downcase
    val = values[c]
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end
    if val < prev
      val *= -1
    else
      prev = val
    end
    total += val
  end
  total
end
