require "toolbox/utils/deepstruct"

describe Utils::DeepStruct do
  subject(:deepstruct) do
    Utils::DeepStruct.new({a: {b: {c: {d: [1,2,3,4] }}}})
  end

  it "enables nested access to attributes using method calls" do
    expect(deepstruct.a.b.c.d).to eq([1,2,3,4])
  end

  it "generates a hash of members" do
    expect(deepstruct.a.b.to_h).to eq(c: {d: [1,2,3,4]})
  end
end
