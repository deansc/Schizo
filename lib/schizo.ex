defmodule Schizo do
  def uppercase(string) do
    transform_every_other_word(string, &uppercaser/1)
  end

  def unvowel(string) do
    transform_every_other_word(string, &unvoweler/1)
  end

  def lowercase(string) do
    transform_every_other_word(string, &lowercaser/1)
  end

  defp transform_every_other_word(string, transformation) do
    string
      |> String.split(" ")
      |> Stream.with_index
      |> Enum.map(transformation)
      |> Enum.join(" ")
  end

  defp uppercaser(input) do
    transformer(input, &String.upcase/1)
  end

  defp unvoweler(input) do
    transformer(input, fn (word) -> String.replace(word, ~r/[aeiou]/i, "") end)
  end

  defp lowercaser(input) do
    transformer(input, &String.downcase/1)
  end

  defp transformer({word, index}, transformation) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> transformation.(word)
    end
  end
end
