require "phone_book"
RSpec.describe PhoneBook do
    context "With no entries" do
        it "has an empty list" do
            phone_book = PhoneBook.new
            expect(phone_book.list).to eq []
        end
    end
    context "given an entry with a number only" do
        it "stores the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("I was calling my friend 07800000000 the other day") 
            expect(phone_book.list).to eq ["07800000000"] 
        end
    end
    context "given an entry with a number in it " do
        it "stores the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers(" 07800000000 ") 
            expect(phone_book.list).to eq ["07800000000"] 
        end
    end
    context "given an entry with a multiple numbers in it " do
        it "returns list of all numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My faves:  07800000000, 07800000001 ") 
            expect(phone_book.list).to eq ["07800000000", "07800000001"] 
        end
    end
    context "given an entry with only text and no numbers" do
       it "returns an empty list" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My faves:")
            expect(phone_book.list).to eq []
        end
    end
    context "given an multiple entries with a numbers in it " do
        it "returns the list of numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend Nag is 07800000000")
            phone_book.extract_numbers("My friend Sou is 07800000001 ")
            expect(phone_book.list).to eq ["07800000000", "07800000001"] 
        end
    end
    context "given an entry with only few numbers" do
        it "returns an empty list" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My faves: 07800000")
            expect(phone_book.list).to eq []
        end
    end
    context "given  multiple entries with a duplicates  " do
        it "only returns unique numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend Nag is 07800000000")
            phone_book.extract_numbers("My friend Sou is 07800000000 ")
            expect(phone_book.list).to eq ["07800000000"] 
        end
    end

end
