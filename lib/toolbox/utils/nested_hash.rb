module Utils
  class NestedHash < Hash
    def initialize(dimensions, *arguments, &block)
      if dimensions == 1
        super(*arguments, &block)
      else
        super() do |hash, key|
          hash[key] = self.class.new(dimensions - 1, *arguments, &block)
        end
      end
    end
  end
end
