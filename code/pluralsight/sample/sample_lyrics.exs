defmodule Sample.Lyrics do

  defp get_sentence(2) do
    """
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    """
  end
  defp get_sentence(1) do
    """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """
  end
  defp get_sentence(number) do
    """
    #{number - 1} bottles of beer on the wall, #{number - 1} bottles of beer.
    Take one down and pass it around, #{get_next_bottle(number-1)} of beer on the wall.
    """
  end

  defp get_next_bottle(number) do
    cond do
      number === 2 -> "1 bottle"
      true -> "#{number - 1} bottles"
    end
  end


  def lyrics(), do: lyrics(100..1)
  def lyrics(first..last) when first <= last,
    do: get_sentence(first)

  def lyrics(first..last),
    do: get_sentence(first) <> lyrics(first - 1..last)

end
