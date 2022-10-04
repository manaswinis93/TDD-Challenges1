require 'make_snippet'
RSpec.describe "make_snippet method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end
    end

    context "given a string of five words" do
        it "returns that string" do
            result = make_snippet("Marry had a little lamb")
            expect(result).to eq "Marry had a little lamb"
        end
    end

    context "given a string of six words" do
        it "returns the first five with a ..." do
            result = make_snippet("Marry had a little lamb called Sou")
            expect(result).to eq "Marry had a little lamb..."
        end
    end
end