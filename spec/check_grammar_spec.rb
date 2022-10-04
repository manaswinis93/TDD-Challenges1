require "check_grammar"
RSpec.describe "check_grammar method" do
    context "When a empty string is passed" do
        it "fails" do
        expect{ check_grammar("") }.to raise_error "Not a sentence!"
    end
    end
    context "When string starts with capital and ends with correct punctuation" do
        it "returns true" do
        result = check_grammar("Hello, I am Manu.")
        expect(result).to eq true 
    end
    end
    context "When string starts with capital and doesn't end with correct punctuation" do
        it "returns false" do
        result = check_grammar("Hello, I am Manu")
        expect(result).to eq false 
    end
    end
    context "When string doesn't start with capital" do
        it "returns false" do
        result = check_grammar("hello, I am Manu.")
        expect(result).to eq false 
    end
    end
    context "When string doesn't start with capital or end with punctuation" do
        it "returns false" do
        result = check_grammar("hello, I am Manu")
        expect(result).to eq false 
    end
    end
    context "When string starts with capital and ends with correct punctuation" do
        it "returns true" do
        result = check_grammar("Hello, I am Manu!")
        expect(result).to eq true 
    end
    end
    context "When string starts with capital and ends with correct punctuation" do
        it "returns true" do
        result = check_grammar("Hello, I am Manu?")
        expect(result).to eq true 
    end
    end
    context "When string ends with wrong punctuation" do
        it "returns false" do
        result = check_grammar("hello, I am Manu,")
        expect(result).to eq false
    end
    end
end