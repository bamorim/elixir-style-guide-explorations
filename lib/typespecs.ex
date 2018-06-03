defmodule TypeSpecs do
  # https://github.com/christopheradams/elixir_style_guide#typedocs
  # NOTE: It doesnt add space between typespecs
  @typedoc "The name"
  @type name :: atom
  @typedoc "The result"
  @type result :: {:ok, term} | {:error, term}

  # https://github.com/christopheradams/elixir_style_guide#union-types
  @type long_type ::
          :ok
          | true
          | false
          | :something_bigger
          | :another_big_atom
          | :more_things
          | :even_more
          | :more_and_more

  @type long_type2 ::
          :some_top
          | :and_some
          | :below

  # https://github.com/christopheradams/elixir_style_guide#spec-spacing
  @spec my_fn(integer) :: integer
  def my_fn(a), do: a + a
end
