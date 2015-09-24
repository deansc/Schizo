defmodule Schizo do
  def uppercase(string) do
    string
      |> String.split(" ")
      |> Stream.with_index
      |> Enum.map(&uppercase_every_other_word/1)
      |> Enum.join(" ")
  end

  defp uppercase_every_other_word({word, index}) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> String.upcase word
    end
  end
end
