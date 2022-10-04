require 'count_words'
RSpec.describe "count_words method" do
    context "counts the number of words in string" do
        it "returns there are 5 words in this string" do
            result = count_words("Old McDonald had a farm")
            expect(result).to eq "There are 5 words in string: Old McDonald had a farm"
        end

        it "returns there are 4 words in the string" do
            result = count_words("and on that farm")
            expect(result).to eq "There are 4 words in string: and on that farm"
        end
    end
end