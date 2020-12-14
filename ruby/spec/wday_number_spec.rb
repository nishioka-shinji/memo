require 'spec_helper'

RSpec.describe DateExt do
  using DateExt
  it "return 1" do
    expect(Date.parse('2020-11-02').get_wday_number).to eq 1
  end
end