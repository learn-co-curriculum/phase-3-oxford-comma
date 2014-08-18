require_relative 'spec_helper'

describe "#oxford_comma" do
  it 'returns a string without any additional fomatting when given a 1-element array' do
    expect(oxford_comma(["kiwi"])).to eq("kiwi")
  end
  it "includes an 'and' between elements when given a 2-element array"
    expect(oxford_comma(["kiwi", "durian"])).to eq("kiwi and durian")
  end
  it "includes an 'and' and commas between elements when given a 3-element array"
    expect(oxford_comma(["kiwi", "durian", "starfruit"])).to eq("kiwi, durian, and starfruit")
  end
  it "formats arrays of lengths greater than three correctly"
    expect(oxford_comma(["kiwi", "durian", "starfruit", "mangos", "dragon fruits"])).to eq("kiwi, durian, starfruit, mangos, and dragon fruits")
  end
  it "formats arrays of lengths greater than three correctly"
    expect(oxford_comma(["kiwi", "durian", "starfruit", "mangos", "dragon fruits", "lychees", "pomelos"])).to eq("kiwi, durian, starfruit, mangos, dragon fruits, lychees, and pomelos")
  end
end
