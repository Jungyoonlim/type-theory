# Effect Rows 
A mathematical object used in type systems to track computational effects 
- A closed effect row is just a finite set of labels.
    - e.g.: `{Console, Network}`
- An open effect row is that finite set plus a row variable standing for "other, unknown effects
    - e.g.: `{Console | ρ}` means "At least Console, amybe more (ρ).”

So rows are like row-polymorphic records, but instead of fields, we are collecting effects. 



## Algebra of Effect Rows 

### Union 

### Intersection 

### Difference 

### Equality 

## Normalization 
Since rows are mathematically sets, duplicates and ordering don't matter. 

## `EffUnknown`

## Typing Intuition 
    - `Int → Int ! {}` = pure function 
    - `Int → Int ! {Console}` = prints
    - `Int → Int ! {Console | ρ}` = prints and more 