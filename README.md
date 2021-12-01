
<img src="my-images/Linux-logo.png" width="45">

# LINUX Commands

* `tree -a` - Displays the tree hierarchy of a directory.  
  * [Tree commands](https://www.geeksforgeeks.org/tree-command-unixlinux/)

<img src="my-images/Git-logo.png" width="100">

# GIT Commands

* `git status`  
* `git add .` - Add all files.  
* `git checkout -b new` - Create a branch called 'new'.  Copies everything from 'main' branch to the 'new' branch. You should now be on the 'new' branch.  
* `git checkout main` - Change back to the 'main' branch from 'new'.  This is now the **head**.
* `git checkout new` - Change to the 'new' branch created earlier.  This is now the **head**.  
* `git merge main` - This will take all changes from 'main' branch and merge with the 'new' branch. Be careful w/this one!  
* `git checkout main` - Return to the 'main' branch.  
* `git pull origin main` - **Pull** changes from remote environment (GitHub) 'main' to local environment 'main'.  
* `git checkout new` - Change to the 'new' branch.  
* `git push origin new` - **Push** local branch 'new' to remote repo on GitHub.  
* `git commit -m "Update"` - Commit changes.  
* `git branch` - Show all current branches.  
* `git branch -d new` - **Delete** the branch called 'new'.  

<img src="my-images/Elixir-logo.png" width="120">

# ELIXIR Commands

* [Elixir Documentation](https://elixir-lang.org/docs.html)  
* [Elixir Cheat Sheet](https://media.pragprog.com/titles/elixir/ElixirCheat.pdf)  

* `mix help` - Help list for Mix build tool.  
  * Within `iex`, type `h File.`, then hit the tab button to display a list of File functions.  
  * Within `iex`, type, `h String.`, then hit the tab button to display a list of String functions.

## Language Stuff

* You group a chunk of Elixir code between the keywords `do` and `end` to delineate the body of a module, and the bodies of the function it contains.  
* **FUNCTIONS** are defined using `def`, followed by the function name, any parameters, and the body in a `do` / `end` block.  
* **MODULE NAMES** must be an Elixir **ATOM**. Conventionally, you use Capitalized words, such as `MyFirstModule`.  
* **FUNCTION NAMES** are either names or one of the Elixir operators. Names must start with a lowercase letter or underscore, and may contain letters, digits, and underscores. The name may end with an exclamation point or a question mark.  
* `IO.puts` writes a string to standard output.  

## Tool Stuff

* `mix` on its own compiles your project.  
* `mix run` runs it, and `mix run <<code>>` executes the code in the context of your project.  
* `iex -S mix` starts `iex` in the context of your project: it uses `mix` to build the application environment and then enters `iex`.  
  * Inside `iex`, type `r <<ModuleName>>` to recompile the file containing ModuleName.  
  * Inside `iex`, type `c <<lib/name.ex>>` to compile a given file.  

## Remember

***Strings Can Be Called Binaries***  
Erlang uses sequences of bytes to represent strings. It considers this just another byte stream (binary data) and so calls these values **binaries**. This convention carries forward into Elixir, so don't be surprised to see the word **binary** where you were expecting **string**.

***Function Names Ending With An Exclamation Mark***  
Often Elixir has two variants of a function, such as `File.read` and `File.read!`. Most of the time this means that the plain version will return an error status on failure, and the version with the shriek will raise an exception. This rule isn't universal, though, so check the documentation.

***Functions Are Identified By Name/Arity***  
Elixir functions have a name (by convention lowercase letters, digits, and underscores, with a possible trailing `?` or `!`). They also have an **arity**: the number of parameters they take.

Both the name and the arity are required to identify a particular function. We write the combination as **name/arity**: `String.split/1`, `String.split/2` and so on.

***Values Are Not Objects***  
In an object-oriented language, an object is typically associated with a class or a prototype. That class defines the methods that are supported by the object. In Ruby, for example, we could split a string using:  
`"123\n456\n789\n".split(/\n/)`  
Values in Elixir have a type, but the type does not attach functions to those values. Instead, you pass the value as a parameter to the appropriate function:  
`String.split("123\n456\n789\n", ~r/\n/)`  

***Functions Return The Last Expression Evaluated***  
Functions exit by falling out the bottom - there is no explicit `return` keyword.  

***Finding Functions***  
Although types don't have associated functions, you'll find that the libraries in Elixir use naming conventions to make finding appropriate functions easier. For example, a string will typically be manipulated by functions in the `String` module (`String.split` and so). Similarly, lists are manipulated by functions in the `List` module.  

Sometimes a set of functions applies to values of multiple types. For example, lists and maps are both collections of values - they can be enumerated. Functions to do with this shared behavior are in their own module (in this case `Enum`).  

# Thinking in Functions
Values are transformed using functions, and the pipeline operator `|>` makes this explicit.  
