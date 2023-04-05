
module Enumerable
    def all?(&block)
      result = true
      each {|e| result = false unless block.call(e)}
      result
    end

    def any?(&block)
        result = false
        each {|e| result = true unless block.call(e)}
        result
      end
end

