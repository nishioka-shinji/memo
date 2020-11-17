# Excelシート名一覧取得
require 'rubyXL'

workbook = RubyXL::Parser.parse("temp.xlsx")
p workbook.sheets.map(&:name) # => ["Sheet1", "Sheet2", "Sheet3"]