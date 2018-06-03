defmodule SourceCodeLayout do
  # https://github.com/christopheradams/elixir_style_guide#spaces-indentation
  def some_function_4_tabs do
    some_function
  end

  # https://github.com/christopheradams/elixir_style_guide#spaces
  def spaces do
    sum = 1 + 2
    {a, b} = {2, 3}
    [first | rest] = [1, 2, 3]
    Enum.map(["one", <<"two">>, "three"], fn num -> IO.puts(num) end)
  end

  # https://github.com/christopheradams/elixir_style_guide#no-spaces
  def no_spaces do
    0 - 1 == -1
    pinned = :result
    ^pinned = some_function()
    5 in 1..10
  end

  # https://github.com/christopheradams/elixir_style_guide#def-spacing

  def some_function(some_data) do
    some_data |> single_line() |> List.first()
  end

  def some_function do
    :result
  end

  def some_other_function do
    :another_result
  end

  def a_longer_function do
    :one
    :two

    :three
    :four
  end

  # https://github.com/christopheradams/elixir_style_guide#single-line-defs
  # the first two should be togheter and the other separated with space
  def single_line(nil), do: {:error, "No Value"}

  def single_line([]), do: :ok

  def single_line([first | rest]) do
    single_line(rest)
  end

  # https://github.com/christopheradams/elixir_style_guide#long-dos
  # Same as above
  # NOTE: Formatter doesn't split the single-lines if they were togheter
  def single_line_2(nil), do: :ok
  def single_line_2([]), do: :ok

  def single_line_2(%{}),
    do: :very_long_line_here_do_you_understand_very_long_line_here_do_you_understand

  # https://github.com/christopheradams/elixir_style_guide#multiple-function-defs
  # With more than one multi-line, there should be no one-line
  def single_line_3(nil), do: :ok
  def single_line_3([]), do: :ok

  def single_line_3(%{}),
    do: :very_long_line_here_do_you_understand_very_long_line_here_do_you_understand

  def single_line_3([first | rest]) do
    single_line(rest)
  end

  # https://github.com/christopheradams/elixir_style_guide#parentheses-pipe-operator
  # It should add () to other_function
  # NOTE: Formatter doesn't add ()
  def pipe_parenthesis(some_data) do
    some_data |> single_line |> List.first()
  end

  # https://github.com/christopheradams/elixir_style_guide#pipe-operator
  # NOTE: Formatter doesnt change from nested call to pipe
  def prefer_pipe(some_data) do
    List.first(single_line(some_data))
  end

  # Should un-indent
  def multiline_indent_pipe(some_string) do
    some_string
    |> String.downcase()
    |> String.strip()
  end

  # Should indent
  def assignment_indent_pipe(some_string) do
    new_string =
      some_string
      |> String.downcase()
      |> String.strip()

    new_string
  end

  # https://github.com/christopheradams/elixir_style_guide#avoid-single-pipelines
  # It should remove the pipe
  # NOTE: Formatter doesnt remove the pipe
  # Credo caught it but not with default settings
  # I had to add {Credo.Check.Readability.SinglePipe} to .credo.exs
  # Then it caught with error
  # Use a function call when a pipeline is only one function long
  def pipe_parenthesis_2(some_data) do
    some_data |> single_line()
  end

  # https://github.com/christopheradams/elixir_style_guide#bare-variables
  # It should move the bare variable to the beginning of the pipe
  # NOTE: Formatter doesnt move the bare variables to the start of pipe
  # Credo caught it with error message:
  # Pipe chain should start with a raw value.
  def pipe_bare_variable(some_data) do
    single_line(some_data) |> List.first()
  end

  # https://github.com/christopheradams/elixir_style_guide#multiline-enums
  def multi_enum do
    [:first_item, :second_item, :next_item, :final_item]
  end

  # https://github.com/christopheradams/elixir_style_guide#multiline-list-assign
  def enum_assignment do
    list = [
      :first_item,
      :second_item
    ]
  end

  # https://github.com/christopheradams/elixir_style_guide#multiline-case-clauses
  def case_space(arg) do
    case arg do
      true ->
        :ok

      false ->
        :error
    end
  end
end
