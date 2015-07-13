require "toolbox/extensions/array"

describe Array do

  describe "#start_with?" do
    LIST = [1,2,3,4,5,6]
    MATCHES = [
      [],
      [1],
      [1,2],
      LIST,
    ]

    NON_MATCHES = [
      [2],
      [1,3,4],
      [6],
      LIST + [7,8,9]
    ]



    context "for matching lists" do

      MATCHES.each do |other_list|
        it "#{other_list} returns true" do
          expect(LIST.start_with?(other_list)).to be_truthy
        end
      end
    end


    context "for non matching lists" do

      NON_MATCHES.each do |other_list|
        it "#{other_list} returns false" do
          expect(LIST.start_with?(other_list)).to be_falsy
        end
      end

    end

  end
end
