# GolemScript Example Runtime

This runtime comes built in to the GolemScript datapack, and serves as both an easy way to quickly try out the GolemScript language, and as a point of reference for anyone looking to create their own runtime.

It has minimal features, and the code is all commented, to help readers understand how it works.

## API
### Run
`glm:runtime/api/run`

This function runs a program from the book in your hand.  
If you are not holding a book, or the book is empty, it will run the last program you compiled.

---

### Stop
`glm:runtime/api/stop`

This function simply stops the current program you are running.
