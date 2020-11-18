require 'spec_helper'

RSpec.describe SortSpecificValue do
  it "return 'last'" do
    ssv   = SortSpecificValue.new
    array = ["z", "1", "last", "a", "9"]
    array = ssv.sort_specific_value(array)
    expect(array.last).to eq "last"
  end
end