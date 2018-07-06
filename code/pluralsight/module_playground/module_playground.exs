defmodule ModulePlayground do
  import IO, only: [puts: 1]  # Import just IO.puts/1
  import Kernel, except: [inspect: 1]  # Don't import Kernel.inspect/1

  alias ModulePlayground.Misc.Util.Math as: MyMath

  require Integer

  def say_here do
    puts("I'm Here!")
  end

  def inspect(param1) do
    puts("Starting Output")
    puts(param1)
    puts("Ending Output")
  end

  def print_sum do
    MyMath.add(1,2)
  end

  def print_is_even do
    puts("Is #{num} even? #{Integer.is_even(num)}")
  end

end
