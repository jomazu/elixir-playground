# Project

Developing with Elixir/OTP (Open Telecom Platform):

1.  ### Introduction
2.  ### Create Mix Project

    ```elixir
    # The name of the new project is 'servy'

    $ mix new servy

    # List of Mix Tasks

    $ mix help

    ```

    `.ex` files are meant to be compiled, then run.  
    `.exs` files are effectively interpreted like scripts. 

3.  ### High-Level Transformations
4.  ### Pattern Matching  

    ```elixir

    # GET request example.
    # Parse data to match and extract pieces of info.
    # Paste the request info into "iex".

    request = """
    GET /wildthings HTTP/1.1
    Host: example.com
    User-Agent: ExampleBrowser/1.0
    Accept: */*

    """

    $ lines = String.split(request, "\n")

    > ["GET /wildthings HTTP/1.1", "Host: example.com", "User-Agent: ExampleBrowser/1.0", "Accept: */*", "", ""]

    $ first_line = List.first(lines)

    > "GET /wildthings HTTP/1.1"

    # This will produce same results as "first_line" above.
    # However, we now introduce the Pipe operator.

    $ first_line = request |> String.split("\n") |> List.first

    # Same result as before.

    > "GET /wildthings HTTP/1.1"

    # Now split each part out...

    $ [method, path, _] = String.split(first_line, " ")

    > ["GET", "/wildthings", "HTTP/1.1"]

    # Now we can define a function to parse the request:

    $ def parse(request) do
        # TODO: Parse the request string into a map:
        [method, path, _] = 
          request 
          |> String.split("\n") 
          |> List.first
          |> String.split(" ")
          
        %{ method: method, path: path, resp_body: "" }
      end

    $ Servy.Handler.parse(request)

    > %{method: "GET", path: "/wildthings", resp_body: ""}

    ```

5.  ### Immutable Data
6.  Function Clauses
7.  Advanced Pattern Matching
8.  Pattern Matching Maps
9.  Serving Files
10. Module Attributes
11. Organizing Code
12. Modeling with Structs
13. Matching Heads | Tails
14. Recursion
15. Slicing and Dicing with Enum
16. Comprehensions
17. Phoenix
18. Test Automation
19. Rendering JSON
20. Web Server Sockets
21. Concurrent, Isolated Processes
22. Sending and Receiving Messages
23. Asynchronous Tasks
24. Stateful Server Processes
25. Refactoring toward GenServer (Generic Server)
26. OTP GenServer
27. Another GenServer
28. Linking Processes
29. Fault Recovery with OTP Supervisors
30. Final OTP Application
