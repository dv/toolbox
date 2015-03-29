require "toolbox/extensions/string"

describe String do

  describe "#colorless" do
    it "removes colors" do
      string = "Hello, World!"
      colored_string = "\033[32m#{string}\033[0m"

      expect(colored_string.colorless).to eq(string)
    end
  end

end
