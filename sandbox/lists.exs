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

end