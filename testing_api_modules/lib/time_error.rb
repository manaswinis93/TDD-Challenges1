require 'date'
require 'json'
require 'net/http'

class TimeError
  def initialize(server)
    @server = server
  end
  def error(my_time)
    return get_server_time - my_time
  end

  private

  def get_server_time
    text_response = @server.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end