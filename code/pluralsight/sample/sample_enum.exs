defmodule Sample.Enum do

  def first(list) do
    hd(list)
  end

  def first([]) do
    nil
  end

  def first([head | _tail]) do
    head
  end

  def first(list) when length(list) == 0, do: nil

  def first1(list, val \\ nil), do: val
  def first1([head | _tail], val), do: head
  def first1([], val \\ nil), do: val


  def first2(list) do
    if length(list) == 0 do
      nil
    else
      hd(list)
    end
  end

  def first3(list) do
    unless length(list) == 0 do
      hd(list)
    end
  end

  def add(list, val \\ 0) do
    [val | list]
  end

  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end

end

    # def first([]), do: nil
    # def first([head | tail]), do: head
    #
    # def map([], _), do: []
    # def map([head | tail], f),
    #     do: [f.(head) | map(tail, f)]
    #
    # def length([]), do: 0
    # def length([_ | tail]),
    #     do: 1 + length(tail)
    #
    # def other_length([_ | tail]),
    #     do: other_length(tail, 1)
    # def other_length([], len),
    #     do: len
    # def other_length([_ | tail], len),
    #     do: other_length(tail, len + 1)
    #
    # def reverse(l),
    #     do: reverse(l, [])
    # def reverse([], reversed),
    #     do: reversed
    # def reverse([head | tail], reversed),
    #     do: reverse(tail, [head | reversed])
    #
    # def other_map([head | tail], f),
    #     do: other_map(tail, f, [f.(head)])
    # def other_map([], _, result),
    #     do: reverse(result)
    # def other_map([head | tail], f, result),
    #     do: other_map(tail, f, [f.(head) | result])
