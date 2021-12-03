defmodule Lists do

# [] = 0
# [ 1, 3, 5 ] => 3

def len([]),        do: 0
def len([ _h | t ]), do: 1 + len(t)
    

# [] = 0
# [ 1, 3, 5 ] => 9

def sum([]),        do: 0
def sum([ h | t ]), do: h + sum(t)

# Function that returns the square of each value
# [ 1, 2, 3] => [ 1, 4, 9 ]

def square([]), do: []
def square([ h | t ]), do: [h*h | square(t)]

# Function that doubles each entry

def double([]), do: []
def double([ h | t ]), do: [h*2 | double(t)]

# Use map to replace the above functions, by inserting
# func where applicable

def map([], _func), do: []
def map([ h | t ], func), do: [ func.(h) | map(t, func) ]

# Example in "iex"
# Lists.map [1,2,3,4], fn x -> 3*x end
# or
# Lists.map [3,6,9], &(&1 * 5) end
# or
# Enum.map [1,2,3,4], fn x -> x*x*x*x end

# Learn the "Enum map functions" in the Enum Module

end