require_relative "any"

module Eiwa
  module Tag
    class Entity < Any
      attr_reader :code, :text

      def initialize(code: nil, text: nil)
        @code = code
        @text = text
      end

      def set_entity(code, text)
        @code = code
        @text = text
      end

      def eql?(other)
        @code == other.code &&
          @text == other.text
      end
      alias == eql?

      def hash
        @code.hash + @text.hash
      end
    end
  end
end
