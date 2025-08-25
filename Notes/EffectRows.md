# Effect Rows 
A mathematical object used in type systems to track computational effects 
- A closed effect row is just a finite set of labels.
    - e.g.: `{Console, Network}`
- An open effect row is that finite set plus a row variable standing for "other, unknown effects
    - e.g.: `{Console | ρ}` means "At least Console, amybe more (ρ).”

