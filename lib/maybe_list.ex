defmodule MaybeList do
  # def collect_oks do
  #   {:ok,
  #    Enum.map(1..100, &handler/1)
  #    |> Keyword.get_values(:ok)}
  # end

  # def collect_errors do
  #   {:error,
  #    Enum.map(1..100, &handler/1)
  #    |> Keyword.get_values(:error)}
  # end

  # def first_error do
  #   Enum.reduce_while(1..100, {:ok, []}, fn (integer, {:ok, list}) ->
  #     case handler(integer) do
  #       {:ok, value} -> {:cont, {:ok, [value | list]}}
  #       {:error, reason} -> {:halt, {:error, reason}}
  #     end
  #   end)
  # end

  # def first_error_success do
  #   Enum.reduce_while(1..100, {:ok, []}, fn (integer, {:ok, list}) ->
  #     case success(integer) do
  #       {:ok, value} -> {:cont, {:ok, [value | list]}}
  #       {:error, reason} -> {:halt, {:error, reason}}
  #     end
  #   end)
  # end

  @doc """
  Validates images by mod(3) divisibility.

  Examples:

      iex> MaybeList.validate(1)
      {:ok, 1}
      iex> MaybeList.validate(0)
      {:ok, 0}
      iex> MaybeList.validate(3)
      {:error, :bad_number}
  """
  def validate(integer) when rem(integer, 3) == 0, do: {:error, :bad_number}
  def validate(integer), do: {:ok, integer}
end
