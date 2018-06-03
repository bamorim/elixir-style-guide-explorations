# https://github.com/christopheradams/elixir_style_guide#module-attribute-ordering
defmodule Module do
  
  @behaviour Extra.MyBehaviour

  @moduledoc "My Docs"

  alias Extra.Nested.Mod

  import Extra.Helpers

  defstruct [:field]

  require Extra.Macros

  @custom_module_attribute 10

  @type name :: String.t

  @callback fun(:ok) :: :ok

  @optional_callback fun: 1

  @macrocallback some_macro(any) :: Macro.t
end