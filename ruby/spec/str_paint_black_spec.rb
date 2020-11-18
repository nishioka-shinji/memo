require 'spec_helper'

RSpec.describe StringExt do
  using StringExt
  it "return あ●う●お" do
    expect("あいうえお".paint_black).to eq "あ●う●お"
  end
end