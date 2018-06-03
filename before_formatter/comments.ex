defmodule Comments do
  # https://github.com/christopheradams/elixir_style_guide#expressive-code
  def comment_above(some_string) do
    String.first(some_string) # Not preferred
  end

  # https://github.com/christopheradams/elixir_style_guide#comment-leading-spaces
  def comment_space(some_string) do
    #Not preferred
    String.first(some_string)
  end

  # https://github.com/christopheradams/elixir_style_guide#comment-grammar
  def longer_comments(some_string) do
    # these lowercase comments are missing punctuatio
    String.first(some_string)
  end
end