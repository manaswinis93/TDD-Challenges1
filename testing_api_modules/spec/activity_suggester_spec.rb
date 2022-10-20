require "activity_suggester"

RSpec.describe ActivitySuggester do
    it "calls an API to provide a suggested activity" do
      requester_dbl = double :requester
      # We expect `requester_dbl` to be called with `#get` and the right args
      # And we tell it to return a sample output of the API
      # I got this using `curl "https://www.boredapi.com/api/activity"`
      expect(requester_dbl).to receive(:get).with(URI("https://www.boredapi.com/api/activity"))
    #    .with(URI("https://www.boredapi.com/api/activity"))
        .and_return('{"activity":"Plan a trip to another country","type":"recreational","participants":1,"price":0,"link":"","key":"5554727","accessibility":0}')
  
      activity_suggester = ActivitySuggester.new(requester_dbl)
      result = activity_suggester.suggest
      expect(result).to eq "Why not: Plan a trip to another country"
    end
  end
