defmodule Extra.Macros do
  defmacro mymacro do
    quote do
      def myfun do
        :myfun
      end
    end
  end
end