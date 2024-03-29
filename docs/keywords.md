# Keywords

## Assignment
### Let
```js
let <variable> = <value>
```
Assigns `value` to `variable`, in the current [scope](glossary.md#scope).  
If `variable` is already assigned in the current scope, then it throws an error.

### Var
```js
var <variable> = <value>
```
Assigns `value` to `variable`, in the global [scope](glossary.md#scope).  
If `variable` is already assigned, then it throws an error.

### Const
```js
const <variable> = <value>
```
Assigns `value` to `variable`, in the current [scope](glossary.md#scope).  
If `variable` is already assigned, then it throws an error.  
`variable` cannot be re-assigned by any means.

## Control Flow
### If
```ruby
if <condition>
  ...
end
```
Executes the code in the given [block](syntax.md#blocks) if `condition` is [truthy](glossary.md#truthiness).

### While
```ruby
while <condition>
  ...
end
```
Repeatedly executes the code in the given [block](syntax.md#blocks) while `condition` is [truthy](glossary.md#truthiness).

### Loop
```ruby
loop <times>
  ...
end
```
Repeatedly executes the code in the given [block](syntax.md#blocks) `times` amount of times.

### Break
```ruby
while true
  break
end
```
Exits the current loop.  
If used outside of a [while](#while) or [loop](#loop), it throws an error.

### Next
```ruby
while true
  next
  print("This won't print")
end
```
Stops executing the code, and goes to the next iteration of the loop.  
If used outside of a [while](#while) or [loop](#loop), it throws an error.

## Functional
### Function
```go
func <name>(<param1>,<param2>...)
  ...
end
```
Defines a function with the name `name` and parameters `param1`, `param2`... etc.  
Functions can be called using the [function call](syntax.md#functions) syntax.

### Return
```go
func example()
  return <value>
  print("This won't print")
end
```
Sets `value` as the result of calling the current function, and stops executing that function.  
If used outside of a function, it throws an error.
