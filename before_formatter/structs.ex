defmodule Structs do
  # https://github.com/christopheradams/elixir_style_guide#nil-struct-field-defaults
  defmodule StructNil do
    defstruct name: nil, params: nil, active: true
  end

  # https://github.com/christopheradams/elixir_style_guide#struct-def-brackets
  defmodule StructNoNil do
    defstruct [params: [], active: true]
  end

  # https://github.com/christopheradams/elixir_style_guide#multiline-structs
  defmodule MultilineStruct do
    defstruct foo: 1, bar: 2, baz: 3, foo2: 1, bar2: 2, baz2: 3, foo3: 1, bar3: 2, baz3: 3, foo4: 1,
      bar4: 2, baz4: 3
  end
  
  defmodule MultilineStructTwo do
    defstruct [
              :name, params: [],
              active: true
              ]
  end
end