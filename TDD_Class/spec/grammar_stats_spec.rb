require "grammar_stats"
RSpec.describe GrammarStats do
    context "When a empty string is passed" do
        it "fails" do
         string = GrammarStats.new
        expect{ string.check("") }.to raise_error "Not a sentence!"
    end
    end
    context "given a  string starts with capital " do
        it " and ends with correct punctuation returns true" do
            string = GrammarStats.new
            expect(string.check("Hello, I am Manu.")).to eq true
            expect(string.check("Good Afternoon!")).to eq true
            expect(string.check("How are you?")).to eq true
            expect(string.check("Where are you from?")).to eq true
        end
        it " and ends with wrong punctuation returns false" do
            string = GrammarStats.new
            expect(string.check("Hello, I am Manu@")).to eq false
            expect(string.check("Good Afternoon,")).to eq false
            expect(string.check("How are you$")).to eq false
        end  
    end
    context "given a string ends with correct punctuation " do
        it " and doesn't start with capital returns false" do
            string = GrammarStats.new
            expect(string.check("hello, I am Manu.")).to eq false
            expect(string.check("good Afternoon!")).to eq false
        end
    end
    context "given a string that doesn't start with capital or with wrong punctuation" do
        it " returns false" do
            string = GrammarStats.new
            expect(string.check("hello, I am Manu@")).to eq false
        end  
    end
    context "returns percentage of texts that passed the check so far" do
        it "fails if no text is checked" do
           string = GrammarStats.new
           expect{string.percentage_good}.to raise_error "No text has been checked!"
        end
        it "returns 0" do
            string = GrammarStats.new
            string.check("How are you$")  
            expect(string.percentage_good).to eq 0
        end
        it "returns 66" do
            string = GrammarStats.new
            string.check("Hello, I am Manu.")  
            string.check("Good Afternoon!") 
            string.check("How are you$")  
            expect(string.percentage_good).to eq 66
        end
    end
end