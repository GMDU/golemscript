### [void](../data_types.md#undefined) print ( [any](../data_types.md) value ) {data-toc-label='Print'}
Converts `value` to a stirng, and writes it to [stdout](../api.md#out).

---

### [void](../data_types.md#undefined) sleep ( [int](../data_types.md#integer) time ) {data-toc-label='Sleep'}
Pauses execution for `time` game ticks. (20 game ticks = 1 second)

---



### [int](../data_types.md#integer) time () {data-toc-label='Time'}
Returns the current game time, in ticks. Equivalent to mcfunction: `/time query gametime`

---

### [any](../data_types.md) call ( [string](../data_types.md#string) name, [array](../data_types.md#array) args ) {data-toc-label='Call'}  
Calls the function named `name`, passing it `args`.  
Returns the return value of the called function.  
Eg. `call("random", [1,10])` is equivalent to `random(1,10)`.  
