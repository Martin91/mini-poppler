module MiniPoppler
  class PDF
    attr_accessor :path

    def initialize(path)
      self.path = path
    end
  end
end