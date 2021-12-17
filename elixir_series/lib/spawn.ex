defmodule S do
  def greet do
    receive do
      :greetings ->
        IO.puts "Hello, World!"
        greet

      :reload ->
        IO.puts "Reloading"
        S.greet
    end
  end
end
