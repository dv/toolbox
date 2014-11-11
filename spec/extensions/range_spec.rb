require "toolbox/extensions/range"
require "date"

describe Range do

  describe "#split" do
    context "A range of integers" do
      subject(:range) { Range.new(0,100) }

      it "splits in three" do
        ranges = range.split(30, 60)

        expect(ranges.size).to be == 3
        expect(ranges[0]).to eq Range.new( 0, 30, true)
        expect(ranges[1]).to eq Range.new(30, 60, true)
        expect(ranges[2]).to eq Range.new(60,100, false)
      end
    end

    context "A range of dates" do
      subject(:range) { Range.new(Date.new(2001), Date.new(2002)) }

      it "splits in two" do
        split_date = Date.new(2001,6,15)
        ranges = range.split(split_date)

        expect(ranges.size).to be == 2
        expect(ranges.first.end).to eq(split_date)
        expect(ranges.last.begin).to eq(split_date)
      end

      it "splits in four" do
        split_dates = [Date.new(2001,3,1), Date.new(2001,6,1), Date.new(2001,9,1)]
        ranges = range.split(*split_dates)

        expect(ranges.size).to be == 4
        expect(ranges[1..-1].map(&:begin)).to eq(split_dates)
        expect(ranges[0..-2].map(&:end)).to eq(split_dates)
      end
    end
  end

end
