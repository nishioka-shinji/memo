# sortで特定の値を最後にする
array = ["z", "1", "last", "a", "9"]

array.sort! do |a, b|
  if    a == "last" then 1
  elsif b == "last" then -1
  else  a <=> b
  end
end

p array # => ["1", "9", "a", "z", "last"]