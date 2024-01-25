# API

GolemScript is a library for the GolemScript programming language.  
As such, it doesn't come with a user interface with which to run programs.  
Instead, it exposes an [API](https://en.wikipedia.org/wiki/Api) that allows other datapacks to run GolemScript programs.  

**All API functions follow the same conventions.**  

A function is called using `function glm:api/module/submodule/function`, `submodule` being optional.  
A function accepts its arguments and outputs values through a data storage: `glm:api/module/submodule function`.  
A function returns (using the `return` command) a status code based on the outcome of the function. These match [http status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes).

For example, the function with module `parser` and function name `init` is called with `function glm:api/parser/init`,  
recieves the argument `target` through `glm:api/parser init.target`,  
outputs `error` through `glm:api/parser init.error`,  
and returns a status code, which can be captured using `execute store`.  

## Parser

### Init
Parses the given strings, separating them with newlines.  

**Arguments**:

- `target` - An array of strings

**Output**:

- `output` - The parsed AST of `target`
- `error` - The error message, if any

**Returns**:

- `200` - Parsed successfully
- `400` - Invalid syntax

---

## Interpreter

### Init
Executes one cycle of the given program.  

**Arguments**:

- `stack` - An array containing the program stack. Should start as an array containing one item: The parsed AST
- `variables` - An array containing all defined variables
- `functions` - An array containing all defined functions
- `scope` - An integer, the current program scope. Should start at `0`

**Output**:
- `error` - The error message, if any
`output` - An object, containing the values that should be used as input in the next cycle:

- `stack` - The program stack after the cycle. If empty, the program is finished, otherwise, it should be run again next tick  
- `variables` - An array containing all defined variables  
- `functions` - An array containing all defined functions  
- `scope` - An integer, the current program scope  

**Returns**:

- `200` - Program ran successfully (Note: If the interpreter throws a Runtime Error, this is still considered a success, and [stderr](#error) should be checked)
- `400` - Invalid inputs given

---

### Function

#### Register
Registers a set of builtin functions

**Arguments**:

- `target` - An array of objects containing the data about the registered functions

A registered function consists of:

- `id` - Name of the function, used to call it in GolemScript
- `name` - Name of the function as an array of single characters
- `function` - Resource location of the mcfunction implementation
- `args` - Array of types of the arguments the function expects (e.g. `[{type: "integer"}]`), will be used for type-checking which is not yet implemented

**Outputs**:

- `error` - The error message, if any

**Returns**:

- `200` - Successfully registered the functions
- `400` - Invalid input

---

#### Delete
Deletes a builtin function from the registry

**Arguments**:

- `id` - The name of the function to delete

**Outputs**:

- `error` The error message, if any

**Returns**:

- `200` - Successfully deleted function
- `404` - Could not find the function to delete

---

#### Execute
Execute is not a callable function, but the data given to builtin functions.  
It is all found in `glm:api/interpreter/function execute`  

This is an object that contains:

- `args` - Array of arguments the user passed to the function
- `metadata` - An object containing arbitrary data the can be used to store data over multiple ticks

You can also write to the storage:

- `metadata` - The data to store for the next tick
- `loop` - Whether to call this function again the next tick (used in sleep)
- `next` - An AST node to evaluate, and then return execution to the function (for example usage, see the implementation of [map](stdlib/enumerable.md#map))
- `return` - The value to return from the function, if any

---

## Stdio
Stdio is not a function that you can call, but a storage that can be read from.  
The storage is `glm:api/interpreter stdio`.  

### Out
Standard output of the program.  
An array of string literals
A string literal is an object containing:

- `type` - The string `"literal"`, used internally in the interpreter  
- `variant` - The string `"string"`, marks this object as a string  
- `value` - The string's value, as an array of characters (`"hello"` is represented as `["h","e","l","l","o"]`)  

### Error
Array containing all errors the program generated
An error is an object containing:

- `type` - The string `"literal"`, used internally in the interpreter  
- `variant` - The string `"error"`, marks this object as an error  
- `value` - The error message, as a string  
