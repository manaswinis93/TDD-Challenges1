require 'estimate_reading_time'
RSpec.describe "estimate_reading_time method " do
    context "When the string is empty" do
    it "returns zero" do
    result =  estimate_reading_time(" ")
     expect(result).to eq 0
    end
    end
    context "When the string has words less than 200" do
    it "returns 1" do
    result =  estimate_reading_time("one " * 100)
     expect(result).to eq 1
    end
    end
    context "When the string has 200 words" do
    it "returns 1" do
    result =  estimate_reading_time("one " * 200)
     expect(result).to eq 1
    end
    end
    context "When the string has 500 words" do
    it "returns 3" do
    result =  estimate_reading_time("one " * 500)
    expect(result).to eq 3
    end
    end
    context "When the string has 5000 words" do
    it "returns 25" do
    result =  estimate_reading_time("one " * 5000)
    expect(result).to eq 25
    end
    end

end