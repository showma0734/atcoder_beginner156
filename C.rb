def valid?(n, arr)
  return false unless n.is_a?(Integer)
  return false unless arr.is_a?(Array)
  return false unless arr.all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 100
  return false if arr.any?{|num| num < 1 || num > 100}
  return false if n != arr.size
  true
end

def rally(n, arr)
  return nil unless valid?(n, arr)
  ave = (arr.sum / n.to_f).round
  arr.map{|a| (a - ave)**2}.sum    
end

#test
puts rally(2, [1, 4]) == 5
puts rally(7, [14, 14, 2, 13, 56, 2, 37]) == 2354
puts rally(1, [2]) == 0
puts rally(0, [nil]) == nil
puts rally(100, [1]*100) == 0
puts rally(101, [1]*101) == nil
puts rally(2, [0, 1]) == nil
puts rally(2, [100, 1]) == 4901
puts rally(2, [101, 1]) == nil
puts rally(2, [1, 2, 3]) == nil
puts rally("a", [1]) == nil
puts rally(1, ["a"]) == nil
puts rally(1, 2) == nil

#all true