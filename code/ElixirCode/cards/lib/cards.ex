defmodule Cards do
    @moduledoc """
    Provides methods for creating and handling a deck of cards.
    """

    # def create_deck_poorly do
    #     values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Jack", "Queen", "King"]
    #     suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    #
    #     deck = for suit <- suits do
    #         for value <- values do
    #             "#{value} of #{suit}"
    #         end
    #     end
    #
    #     List.flatten(deck)
    # end

    def create_deck do
        values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Jack", "Queen", "King"]
        suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

        for suit <- suits, value <- values do
            "#{value} of #{suit}"
        end
    end

    def shuffle(deck) do
        Enum.shuffle(deck)
    end

    def contains?(deck, card) do
        Enum.member?(deck, card)
    end

    def deal(deck, hand_size) do
        {head, _tail} = Enum.split(deck, hand_size)
        head
    end

    def save(deck, filename) do
        binary = :erlang.term_to_binary(deck)
        File.write(filename, binary)
    end

    # def load_poorly(filename) do
    #     {status, binary} = File.read(filename)
    #
    #     case status do
    #         :ok    -> :erlang.binary_to_term(binary)
    #         :error -> "Error reading file"
    #     end
    # end

    def load(filename) do
        case File.read(filename) do
            {:ok, binary} -> :erlang.binary_to_term(binary)
            {:error, _reason}   -> "Error reading file"
        end
    end

    # def create_hand_poorly(hand_size) do
    #    deck = Cards.create_deck()
    #    deck = Cards.shuffle()
    #    hand = Cards.deal(hand_size)
    # end

    def create_hand(hand_size) do
        Cards.create_deck()
        |> Cards.shuffle()
        |> Cards.deal(hand_size)
    end

end
