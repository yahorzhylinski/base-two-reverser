require './base_two_neg_reverser.rb'

RSpec.describe do

  it "base_two_neg_reverser should convert empty sequence to [0]" do
    expect(base_two_neg_reverser([])).to eq([0])
  end

  it "base_two_neg_reverser should convert 9 to -9" do
                            # => 9                    # => -9
    expect(base_two_neg_reverser([1, 0, 0, 1, 1])).to eq([1, 1, 0, 1])
  end

  it "base_two_neg_reverser should convert -23 to 23" do
                            # => -23                     # => 23
    expect(base_two_neg_reverser([1, 0, 0, 1, 1, 1])).to eq([1, 1, 0, 1, 0, 1, 1])
  end

  it "base_two_neg_reverser should convert 255 to -255" do
                            # => 255                     # => -255
    expect(base_two_neg_reverser([1, 1, 0, 0, 0, 0, 0, 0, 1])).to eq([1, 0, 0, 0, 0, 0, 0, 0, 1, 1])
  end

  it "base_two_neg_reverser should convert -256 to 256" do
                            # => -256                     # => 256
    expect(base_two_neg_reverser([0, 0, 0, 0, 0, 0, 0, 0, 1, 1])).to eq([0, 0, 0, 0, 0, 0, 0, 0, 1])
  end


  it "base_two_neg_reverser should convert 43654 to -43654" do
#                          # => 43654                                                                                                            # => -43654
    expect(base_two_neg_reverser([0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1])).to eq([0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1])
  end

end