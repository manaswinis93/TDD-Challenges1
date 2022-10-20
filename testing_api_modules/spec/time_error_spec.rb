require "time_error"
require 'date'

RSpec.describe TimeError do
    it "returns time difference in seconds" do
        fake_server = double :server
        expect(fake_server).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")
        ).and_return('{"abbreviation":"BST","client_ip":"77.103.247.199","datetime":"2022-10-11T11:31:27.601235+01:00","day_of_week":2,"day_of_year":284,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1665484287,"utc_datetime":"2022-10-11T10:31:27.601235+00:00","utc_offset":"+01:00","week_number":41}')
        diff = TimeError.new(fake_server)
        time = Time.new(2022, 11, 10, 11, 31, 27)
        expect(diff.error(time)).to eq -2595599.398765
    end
end
