require "interactive_calculator"

RSpec.describe InteractiveCalculator do
    it "returns difference of two numbers" do
        fake_io = double :io
        expect(fake_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
        expect(fake_io).to receive(:puts).with("Please enter a number").ordered
        expect(fake_io).to receive(:gets).and_return("100").ordered
        expect(fake_io).to receive(:puts).with("Please enter another number").ordered
        expect(fake_io).to receive(:gets).and_return("10").ordered
        expect(fake_io).to receive(:puts).with("Here is your result:").ordered
        expect(fake_io).to receive(:puts).with("100 - 10 = 90")
        diff = InteractiveCalculator.new(fake_io)
        diff.run
    end
    context "when the first number is not integer" do
        it "returns difference of two numbers" do
            fake_io = double :io
            expect(fake_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(fake_io).to receive(:puts).with("Please enter a number").ordered
            expect(fake_io).to receive(:gets).and_return("Manu").ordered
            diff = InteractiveCalculator.new(fake_io)
            expect{diff.run}.to raise_error "You must enter a number!"
        end
    end
    context "when the first number is not integer" do
        it "returns difference of two numbers" do
            fake_io = double :io
            expect(fake_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(fake_io).to receive(:puts).with("Please enter a number").ordered
            expect(fake_io).to receive(:gets).and_return("100").ordered
            expect(fake_io).to receive(:puts).with("Please enter another number").ordered
            expect(fake_io).to receive(:gets).and_return("Hello").ordered
            diff = InteractiveCalculator.new(fake_io)
            expect{diff.run}.to raise_error "You must enter a number!"
        end
    end
    context "When first number is smaller " do
        it "returns negitive integer as result" do
            fake_io = double :io
            expect(fake_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(fake_io).to receive(:puts).with("Please enter a number").ordered
            expect(fake_io).to receive(:gets).and_return("10").ordered
            expect(fake_io).to receive(:puts).with("Please enter another number").ordered
            expect(fake_io).to receive(:gets).and_return("100").ordered
            expect(fake_io).to receive(:puts).with("Here is your result:").ordered
            expect(fake_io).to receive(:puts).with("10 - 100 = -90")
            diff = InteractiveCalculator.new(fake_io)
            diff.run
        end
    end
    context "given both the numbers are same" do
        it "returns zero as result" do
            fake_io = double :io
            expect(fake_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(fake_io).to receive(:puts).with("Please enter a number").ordered
            expect(fake_io).to receive(:gets).and_return("100").ordered
            expect(fake_io).to receive(:puts).with("Please enter another number").ordered
            expect(fake_io).to receive(:gets).and_return("100").ordered
            expect(fake_io).to receive(:puts).with("Here is your result:").ordered
            expect(fake_io).to receive(:puts).with("100 - 100 = 0")
            diff = InteractiveCalculator.new(fake_io)
            diff.run
        end
    end
end
