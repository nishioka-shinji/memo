# Excelシート名一覧取得
require 'rubyXL'

path     = File.join(File.dirname(__FILE__), "../public/temp.xlsx")
workbook = RubyXL::Parser.parse(path)
p workbook.sheets.map(&:name) # => ["Sheet1", "Sheet2", "Sheet3"]