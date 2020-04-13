def valid?(n, r)
  return false unless [n, r].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 100
  return false if r < 0 || r > 4111
  true
end

def rating(n, r)
  return nil unless valid?(n, r)
  return r + (10 - n)*100 if n < 10   
  r
end

#test
puts rating(2, 2919) == 3719
puts rating(22, 3051) == 3051
puts rating(1, 2000) == 2900
puts rating(0, 2000) == nil
puts rating(100, 2000) == 2000
puts rating(101, 2000) == nil
puts rating(20, 0) == 0
puts rating(20, -1) == nil
puts rating(20, 4111) == 4111
puts rating(20, 4112) == nil
puts rating("a", 2000) == nil
puts rating(20, "a") == nil

#all true
