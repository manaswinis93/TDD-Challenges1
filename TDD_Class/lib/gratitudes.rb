class Gratitudes
    def initialize
        @gratitudes = []
    end
    def add(string)
        @gratitudes << string
    end
    def format
        format = @gratitudes.join(", ")
      return  "Be garteful for: #{format}"
    end
end