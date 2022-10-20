require "string_repeater"

RSpec.describe StringRepeater do
    it "repeats a string many times" do
       fake_io = double :io
        expect(fake_io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(fake_io).to receive(:puts).with("Please enter a string").ordered
        expect(fake_io).to receive(:gets).and_return("Ammu").ordered
        expect(fake_io).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(fake_io).to receive(:gets).and_return("10").ordered
        expect(fake_io).to receive(:puts).with("Here is your result:").ordered
             expect(fake_io).to receive(:puts).with("AmmuAmmuAmmuAmmuAmmuAmmuAmmuAmmuAmmuAmmu")
        string = StringRepeater.new(fake_io)
        string.run
    end

    context "Given a string and a string " do
        it "fails" do
            fake_io = double :io
             expect(fake_io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
             expect(fake_io).to receive(:puts).with("Please enter a string").ordered
             expect(fake_io).to receive(:gets).and_return("Ammu").ordered
             expect(fake_io).to receive(:puts).with("Please enter a number of repeats").ordered
             expect(fake_io).to receive(:gets).and_return("Manu").ordered
             string = StringRepeater.new(fake_io)
             expect{string.run}.to raise_error "You must enter a Positive Number!"
         end
    end
    context "Given a string and a negitive integer " do
        it "fails" do
            fake_io = double :io
             expect(fake_io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
             expect(fake_io).to receive(:puts).with("Please enter a string").ordered
             expect(fake_io).to receive(:gets).and_return("Ammu").ordered
             expect(fake_io).to receive(:puts).with("Please enter a number of repeats").ordered
             expect(fake_io).to receive(:gets).and_return("-10").ordered
             string = StringRepeater.new(fake_io)
             expect{string.run}.to raise_error "You must enter a Positive Number!"
         end
    end
    context "Given a string and number is zero  " do
        it "fails" do
            fake_io = double :io
             expect(fake_io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
             expect(fake_io).to receive(:puts).with("Please enter a string").ordered
             expect(fake_io).to receive(:gets).and_return("Ammu").ordered
             expect(fake_io).to receive(:puts).with("Please enter a number of repeats").ordered
             expect(fake_io).to receive(:gets).and_return("0").ordered
             string = StringRepeater.new(fake_io)
             expect{string.run}.to raise_error "You must enter a Positive Number!"
         end
    end
    context "Given a number instead of string" do
        it "fails" do
            fake_io = double :io
             expect(fake_io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
             expect(fake_io).to receive(:puts).with("Please enter a string").ordered
             expect(fake_io).to receive(:gets).and_return("10").ordered
             string = StringRepeater.new(fake_io)
             expect{string.run}.to raise_error "You must enter a Sting!"
         end
    end

end