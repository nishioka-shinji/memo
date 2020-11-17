# 文字を黒塗りするメソッド（Stringクラスをリファインメントで拡張）
# railsで使用する時は lib/extにモジュールを保存
module StringExt
  refine String do
    def paint_black
      self.chars.map.with_index { |c, i| i % 2 != 0 ? "●" : c }.join
    end

    def paint_black!
      self.replace(paint_black)
    end
  end
end

using StringExt

str1 = "あいうえお"
str2 = "かきくけこ"
str1.paint_black
str2.paint_black!

p str1 # => "あいうえお"
p str2 # => "か●く●こ"