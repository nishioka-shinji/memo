class SortSpecificValue
  def sort_specific_value(array)
    array.sort do |a, b|
      if    a == "last" then 1
      elsif b == "last" then -1
      else  a <=> b
      end
    end
  end
end