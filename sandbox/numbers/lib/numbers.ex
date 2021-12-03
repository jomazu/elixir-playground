defmodule Numbers do

  @num_list "assets/numbers.txt"
  |> File.read!()
  |> String.split(~r/\n/, trim: true)

  def random_num do
  @num_list
  |> Enum.random()
  end

def swap({a, b}), do: {b,a}

def equal(a, a), do: true
def equal(_, _), do: false

end
