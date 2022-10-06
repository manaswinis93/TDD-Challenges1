require "gratitudes"

RSpec.describe Gratitudes do
    it "adds and returns list of gratitudes" do
        gratitudes = Gratitudes.new
        gratitudes.add("your cat")
        result = gratitudes.add("nice people")
        expect(result).to eq ["your cat", "nice people"]
    end

    it "adds and returns list of gratitudes formatted" do
        gratitudes = Gratitudes.new
        gratitudes.add("your cat")
        gratitudes.add("nice people")
        expect(gratitudes.format).to eq "Be garteful for: your cat, nice people"
    end
end