require "toolbox/utils/nested_hash"

RSpec.describe Utils::NestedHash do
  context "with 1 dimension" do
    subject(:nested_hash) do
      Utils::NestedHash.new(1)
    end

    it "works as a normal hash" do
      nested_hash[:a] = 1

      expect(nested_hash[:a]).to eq(1)
      expect(nested_hash[:b]).to be_nil
    end
  end

  context "with 2 dimensions" do
    subject(:nested_hash) do
      Utils::NestedHash.new(2)
    end

    it "has 2 dimensions" do
      nested_hash[:a][:b] = 1

      expect(nested_hash[:a][:b]).to eq(1)
      expect(nested_hash[:a][:c]).to be_nil

      expect(nested_hash[:z]).not_to be_nil
    end
  end
end
