
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
*
