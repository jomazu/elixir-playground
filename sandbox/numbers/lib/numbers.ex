defmodule Numbers do

  @num_list "assets/numbers.txt"
  |> File.read!()
  |> String.split(~r/\n/, trim: true)

  def random_num do
  @num_list
  |> Enum.random()
  end
end
