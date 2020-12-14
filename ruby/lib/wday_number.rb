# その月の第何週目の曜日かを返す処理
module DateExt
  require 'date'
  require 'active_support/all'

  refine Date do
    def get_wday_number
      (self.beginning_of_month..self.end_of_month)
      .group_by(&:wday).find { |wday, dates| dates.include?(self) }.first
    end
  end
end