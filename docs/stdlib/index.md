# Standard Library

The standard library is the set of builtin functions, avaliable in every GolemScript program.  
They are all coded in native MCFunction, and execute within one game tick. (1/20 of a second)

A builtin function can be called, like any other function, using it's name.  
Example:
```rb
# This calls the print function
print("Hello, world!")
```

The standard library has been split into modules for documentation purposes.  
Modules have no effect on how functions are called in the language.  

These modules are:  

- [Maths](maths.md) for mathematical and number-based functions  
- [String](string.md) for string processing  
- [Enumerable](enumerable.md) for functions that deal with [enumerables](../glossary.md#enumerable)  
- [Types](types.md) for converting between different [data types](../data_types.md)  
- [Misc](misc.md) for other functions that don't fit into the above categories  
