defmodule Syntax do
  # https://github.com/christopheradams/elixir_style_guide#parentheses
  def args_parens arg1, arg2 do
    arg1 + arg2
  end
  
  def no_args_parens() do
    :ok
  end

  # https://github.com/christopheradams/elixir_style_guide#add-blank-line-after-multiline-assignment
  def multi_assignment_blank_line(another_string) do
    some_string =
      "Hello"
      |> String.downcase()
      |> String.strip()
    another_string <> some_string
  end

  def multi_assignment_blank_line_2(x) do
    something =
      if x == 2 do
        "Hi"
      else
        "Bye"
      end
    String.downcase(something)
  end

  # https://github.com/christopheradams/elixir_style_guide#unless-with-else
  def unless_else(success) do
    unless success do
      IO.puts('failure')
    else
      IO.puts('success')
    end
  end

  # https://github.com/christopheradams/elixir_style_guide#true-as-last-condition
  def cond_true(a) do
    cond do
      a + 2 == 5 ->
        "Nope"
    
      a + 3 == 5 ->
        "Uh, uh"
    
      :else ->
        "OK"
    end
  end

  # https://github.com/christopheradams/elixir_style_guide#function-names-with-parentheses
  def fun_paren_call do
    cond_true (2)
  end

  # https://github.com/christopheradams/elixir_style_guide#parentheses-and-functions-with-zero-arity
  def zero_arity_call do
    fun_paren_call
  end

  # https://github.com/christopheradams/elixir_style_guide#keyword-list-syntax
  def keyword_list do
    [{:a, "baz"}, {:b, "qux"}]
  end

  # https://github.com/christopheradams/elixir_style_guide#keyword-list-brackets
  def omit_square_brackets do
    length([a: 1, b: 2])
  end

  # https://github.com/christopheradams/elixir_style_guide#with-clauses
  def with_align do
    with :ok <- no_args_parens(),
      3 <- args_parens(1, 2), do: :ok
  end
end