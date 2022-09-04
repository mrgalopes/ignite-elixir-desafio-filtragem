defmodule ListFilter do
  def call(list) do
    Enum.filter(list, &is_odd_number/1)
    |> length()
  end

  defp is_odd_number(string) do
    case Integer.parse(string) do
      :error -> false
      {number, _} -> Integer.mod(number, 2) == 1
    end
  end
end
