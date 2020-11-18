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
