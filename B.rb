def valid?(n, k)
  return false unless [n, k].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 10**9
  return false if k < 2 || k > 10
  true
end

def digits(n, k)
  return nil unless valid?(n, k)
  p n.to_s(k).size
  #count = 1
  # while n >= k do
  #  n /= k
  #  count += 1
  # end
  # count
end

#test
puts digits(11, 2) == 4
puts digits(1010101, 10) == 7
puts digits(1, 10) == 1
puts digits(0, 10) == nil
puts digits(10**9, 10) == 10
puts digits(11**9, 10) == nil
puts digits(10, 1) == nil
puts digits(10, 11) == nil
puts digits(314159265, 3) == 18
puts digits("a", 10) == nil
puts digits(10, "a") == nil

#all true
