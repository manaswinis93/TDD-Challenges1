require "cat_facts"

RSpec.describe CatFacts do
    it "returns cat facts" do
        fake_server = double :server
        expect(fake_server).to receive(:get).with(URI("https://catfact.ninja/fact")
        ).and_return('{"fact":"At 4 weeks, it is important to play with kittens so that they do not develope a fear of people.","length":95}')
        fact = CatFacts.new(fake_server)
        expect(fact.provide).to eq "Cat fact: At 4 weeks, it is important to play with kittens so that they do not develope a fear of people."
    end
end