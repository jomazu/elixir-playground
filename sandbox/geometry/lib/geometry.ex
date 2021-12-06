defmodule Geometry do

# From iex: 
# Geometry.area({:rectangle, 12, 12})
# > 144
  def area({:rectangle, w, h}) do
    w * h
  end

# From iex: 
# Geometry.area({:circle, 2.5})
# > 19.625
  def area({:circle, r}) when is_number(r) do
    3.14 * r * r
  end

end
