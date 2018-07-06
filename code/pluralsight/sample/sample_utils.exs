defmodule Sample.Utils do
  def square(a), do: a * a

  def sum(a,b), do: a + b

  def custom_func(a, f) do
    f.(a)
  end
end
