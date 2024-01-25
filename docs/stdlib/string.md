### [string](../data_types.md#string) match ( [regex](../data_types.md#regex) pattern, [string](../data_types.md#string) target ) {data-toc-label='Match'}
Returns the first substring of `string` to match `pattern`.  
If `pattern` does not match `string`, it returns an empty string.

---

### [string](../data_types.md#string) join ( [array](../data_types.md#array) target, [string](../data_types.md#string) separator = "" ) {data-toc-label='Join'}  
Runs [str](#string-str-any-target) on each element of `target`, separating each element by `separator`, and combines all to a single string.  

---

### [bool](../data_types.md#boolean) prefix? ( [string](../data_types.md#string) target, [string](../data_types.md#string) prefix ) {data-toc-label='Prefix'}  
Returns a boolean value, whether `target` begins with `prefix`.

---

### [bool](../data_types.md#boolean) suffix? ( [string](../data_types.md#string) target, [string](../data_types.md#string) suffix ) {data-toc-label='Suffix'}  
Returns a boolean value, whether `target` ends with `suffix`.

---

### [string](../data_types.md#string) repeat ( [string](../data_types.md#string) target, [int](../data_types.md#integer) count ) {data-toc-label='Repeat'}  
Returns a string, with `target` repeated `count` times.

---

### [string](../data_types.md#string) upper ( [string](../data_types.md#string) target ) {data-toc-label='Upper'}  
Returns `target`, converted to upper case.

---

### [string](../data_types.md#string) lower ( [string](../data_types.md#string) target ) {data-toc-label='Lower'}  
Returns `target`, converted to lower case.

---

### [string](../data_types.md#string) trim ( [string](../data_types.md#string) target ) {data-toc-label='Trim'}  
Returns `target`, with whitespace removed from the left and right.

---

### [string](../data_types.md#string) ltrim ( [string](../data_types.md#string) target ) {data-toc-label='Ltrim'}  
Returns `target`, with whitespace removed from the left.

---

### [string](../data_types.md#string) rtrim ( [string](../data_types.md#string) target ) {data-toc-label='Rtrim'}  
Returns `target`, with whitespace removed from the right.

---

### [string](../data_types.md#string) squeeze ( [string](../data_types.md#string) target, [string](../data_types.md#string)? characters ) {data-toc-label='Squeeze'}
Returns `target`, with all repeated characters collapsed into one.  
If `characters` is provided, it only collapses repeated characters contained in `characters`.

---

### [string](../data_types.md#string) replace ( [string](../data_types.md#string) target, [string](../data_types.md#string) match, [string](../data_types.md#string) substitute, [int](../data_types.md#integer) count = -1 ) {data-toc-label='Replace'}
Returns `target` but with `count` instances of substring `match` replaced with `substitute`, in left to right order.

If `count` is negative, it will replace all matching substrings.

---

### [array](../data_types.md#array) split ( [string](../data_types.md#string) target, [string](../data_types.md#string) match ) {data-toc-label='Split'}
Splits `target` on each instance of substring `match`.

---

### [string](../data_types.md#string) lpad ( [string](../data_types.md#string) target, [int](../data_types.md#integer) size, [string](../data_types.md#string) padding = " " ) {data-toc-label='Lpad'}
If the [size](../glossary.md#size) of `target` is less than `size`, it returns `target` but padded with characters from `padding` at the start.

---

### [string](../data_types.md#string) rpad ( [string](../data_types.md#string) target, [int](../data_types.md#integer) size, [string](../data_types.md#string) padding = " " ) {data-toc-label='Rpad'}
If the [size](../glossary.md#size) of `target` is less than `size`, it returns `target` but padded with characters from `padding` at the end.
