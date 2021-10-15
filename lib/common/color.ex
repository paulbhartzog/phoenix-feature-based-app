defmodule Color do
  @moduledoc """
  Colorize `IO.puts` output

  ## Example

      IO.puts Color.red("This text is red!")

  """
  def black(text),    do: IO.ANSI.black()   <> text <> IO.ANSI.reset()
  def blue(text),     do: IO.ANSI.blue()    <> text <> IO.ANSI.reset()
  def cyan(text),     do: IO.ANSI.cyan()    <> text <> IO.ANSI.reset()
  def green(text),    do: IO.ANSI.green()   <> text <> IO.ANSI.reset()
  def magenta(text),  do: IO.ANSI.magenta() <> text <> IO.ANSI.reset()
  def red(text),      do: IO.ANSI.red()     <> text <> IO.ANSI.reset()
  def white(text),    do: IO.ANSI.white()   <> text <> IO.ANSI.reset()
  def yellow(text),   do: IO.ANSI.yellow()  <> text <> IO.ANSI.reset()

  def random(text) do
    color =
      ~w[blue cyan green magenta red white yellow]
      |> Enum.random()

    apply(Color, String.to_existing_atom(color), [text])
  end
end
