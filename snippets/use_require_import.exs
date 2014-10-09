defmodule Foo do

  # allows a module to inject custom code
  use Bar

  # loads and ensures Bar is available
  require Bar

  # imports functions/macros
  # so we can use non qualified names
  import Bar

end
