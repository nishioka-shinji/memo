# Excel 列名を数値に変換
def column(c)
  if c == "" || c.match?(/[^a-zA-Z]/)
    raise "ConvertError"
  end
  c.upcase!
  base_ord_a = 'A'.ord
  c.chars.inject(0) { |l, r|
    l * 26 + (r.ord - base_ord_a + 1)
  } - 1
end