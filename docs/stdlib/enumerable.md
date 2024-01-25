### [int](../data_types.md#integer) len ( [enumerable](../glossary.md#enumerable) value ) {data-toc-label='Len'}
Returns the length of `value`.  
For strings, this is the number of characters.  
For arrays, this is the number of elements.  
For objects, this is the number of key-value pairs.  

---

### [enumerable](../glossary.md#enumerable) delete ( [enumerable](../glossary.md#enumerable) target, [int](../data_types.md#integer) | [string](../data_types.md#string) index ) {data-toc-label='Delete'}
Returns a copy of `target` with the value at `target[index]` deleted from it.  
For arrays and strings, this is the nth value, where n is `index`.  
For object, this is the value with a key of `index`.  

---

### [enumerable](../glossary.md#enumerable) set ( [enumerable](../glossary.md#enumerable) target, [int](../data_types.md#integer) | [string](../data_types.md#string) index, [any](../data_types.md) value ) {data-toc-label='Set'}
Returns a copy of `target` with the value at `target[index]` set to `value`.  
For arrays and strings, this is the nth value, where n is `index`.  
For object, this is the value with a key of `index`.  

---

### [int](../data_types.md#integer) index ( [string](../data_types.md#string) | [array](../data_types.md#array) target, [string](../data_types.md#string) | [any](../data_types.md) element ) {data-toc-label='Index'}
If `target` is an array, it returns the index of the first occurence of `element` in `target`.  
If `target` is a string, it returns the index of the first character of the first substring to match `element`.

If `target` does not contain `element`, it returns `-1`.

---

### [bool](../data_types.md#boolean) contains? ( [string](../data_types.md#string) | [array](../data_types.md#array) target, [string](../data_types.md#string) | [any](../data_types.md) element ) {data-toc-label='Contains'}
Returns whether `target` contains `element`.

---

### [bool](../data_types.md#boolean) any ( [enumerable](../glossary.md#enumerable) target, [proc](../data_types.md#proc) predicate ) {data-toc-label='Any'}
Returns whether `predicate`, when called on all [elements](../glossary.md#elements) of `target` separately, returns a [truthy](../glossary.md#truthiness) value at least once.

---

### [bool](../data_types.md#boolean) every ( [enumerable](../glossary.md#enumerable) target, [proc](../data_types.md#proc) predicate ) {data-toc-label='Every'}
Returns whether `predicate`, when called on all [elements](../glossary.md#elements) of `target` separately, returns a [truthy](../glossary.md#truthiness) value every time.

---

### [string](../data_types.md#string) | [array](../data_types.md#array) reverse ( [string](../data_types.md#string) | [array](../data_types.md#array) target ) {data-toc-label='Reverse'}  
Returns a new string or array, where all elements are in reverse order to `target`.

---

### [string](../data_types.md#string) | [array](../data_types.md#array) slice ( [string](../data_types.md#string) | [array](../data_types.md#array) target, [int](../data_types.md#integer) offset, [int](../data_types.md#integer) count) {data-toc-label='Slice'}  
Returns `count` amount of elements, starting from position `offset`.  
If `count` is not specified, it returns all objects starting from position `offset`.

---

### [array](../data_types.md#array) flat ( [array](../data_types.md#array) target, [int](../data_types.md#integer) depth = 1 ) {data-toc-label='Flat'}  
Recursively collapses child array elements in `target` in to the output, to a depth of `depth`.  

---

### [array](../data_types.md#array) map ( [enumerable](../glossary.md#enumerable) target, [proc](../data_types.md#proc) proc ) {data-toc-label='Map'}  
Calls `proc` for each [element](../glossary.md#elements) in `target`.  
Returns an array of all the return values of `proc`.  

---

### [array](../data_types.md#array) sort ( [array](../data_types.md#array) target, [proc](../data_types.md#proc) proc ) {data-toc-label='Sort'}  
Sorts the elements of `target`, based on the return value of `proc`, given the compare value as `arg 0`, and the pivot as `arg 1`.

The proc should return a negative or zero number if `arg 0` is to follow `arg 1`, or a positive number if `arg 1` is to follow `arg 0`.

This can easily be accomplished with the [<=>](../operators.md#three-way-comparison) operator.

If `proc` is unset, sort will default to sorting by value in ascending order.

---

### [enumerable](../glossary.md#enumerable) filter ( [enumerable](../glossary.md#enumerable) target, [proc](../data_types.md#proc) predicate ) {data-toc-label='Filter'}  
Returns `target`, with only the [elements](../glossary.md#elements) for which `predicate`, when called with that element, returns a [truthy](../glossary.md#truthiness) value.  

---

### [any](../data_types.md) find ( [enumerable](../glossary.md#enumerable) target, [proc](../data_types.md#proc) predicate ) {data-toc-label='Find'}  
Returns the first [element](../glossary.md#elements) of `target` for which `predicate`, when called with that element, returns a [truthy](../glossary.md#truthiness) value.  
If `target` is an object, it returns the value of the key-value pair for with `predicate` returns truthy.

---

### [any](../data_types.md) reduce ( [enumerable](../glossary.md#enumerable) target, [any](../data_types.md) value, [proc](../data_types.md#proc) proc ) {data-toc-label='Reduce'}  
Reduces an enumerable into a single value.  
Calls `proc` with the next [element](../glossary.md#elements) of `target` and the previous return value of `proc`, or `value` to begin with.  
Returns the last return value of `proc`.


---

### [array](../data_types.md#array) shuffle ( [array](../data_types.md#array) target ) {data-toc-label='Shuffle'}  
Returns a new array containing the elements of `target`, in a random order.
