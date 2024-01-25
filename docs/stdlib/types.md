### [string](../data_types.md#string) typeof ( [any](../data_types.md) value ) {data-toc-label='Typeof'}
Returns the name of the data type of `value`.
Example:
```rb
typeof(1) # integer
typeof(/hi/) # regex
typeof(true) # boolean
```

---

### [int](../data_types.md#integer) int ( [any](../data_types.md) value ) {data-toc-label='Int'}
Converts `value` into an integer.  
If it fails, it returns zero.  
If `value` is not a type that is convertable into an intger, it throws an error.    

---

### [string](../data_types.md#string) str ( [any](../data_types.md) target ) {data-toc-label='Str'}  
Returns a string representation of `target`, formatted the same way as [print](#void-print-any-value).

---

### [object](../data_types.md#object) obj ( [array](../data_types.md#array) target ) {data-toc-label='Obj'}  
Returns an object with key-value pairs drawn from child arrays in `target`.

Eg. `[['a', 1], ['b', 2]]` returns as `{a: 1, b: 2}`.

---

### [array](../data_types.md#array) arr ( [enumarable](../glossary.md#enumerable) target ) {data-toc-label='Arr'}  
Returns an array containing the elements of `target`.  
If the elements are multiple values, it wraps the values of each element in a sub-array.

---

### [int](../data_types.md#integer) ascii ( [char](../glossary.md#character) char ) {data-toc-label='Ascii'}  
Returns the [ASCII code](https://en.wikipedia.org/wiki/ASCII) of the first character of `char`.  

---

### [char](../glossary.md#character) char ( [int](../data_types.md#integer) code ) {data-toc-label='Char'}  
Returns the character with the [ASCII code](https://en.wikipedia.org/wiki/ASCII) matching `code`.

---
