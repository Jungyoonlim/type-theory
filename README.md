# Type Theory

Learning from:

- https://ncatlab.org/nlab/show/type+theory
- https://medium.com/@lorenzowbattistela/type-theory-101-437df9e418c5
- https://plato.stanford.edu/entries/type-theory/
- https://www.cs.ru.nl/~herman/PUBS/IntroTT-improved.pdf
- https://seclab.illinois.edu/wp-content/uploads/2011/04/Gunter94.pdf
- https://www.cs.kent.ac.uk/people/staff/sjt/TTFP/ttfp.pdf

## why type theory?

The OS knows the shape of every possible action before touching any API. With Type Theory, adding a new intent forces you to define exactly how it integrates.

## Intro to Type Theory

### Types and Sets

Types give synctactic information whereas sets give semantic information.

Extensionality vs. Intensionality:

## Function Types -> Lambda Calculus

### Formation Rule

Γ stands for context. A formation rule, as its name states, gives us a way to form function types.

Under context Gamma, if A is of type Type and B is of type Type, then we have a function from type A to type B.

### Introduction Rule

Under context gamma, assume x is of type A. If b is of type B, then we have a function of type A that goes to type B receiving b as an argument.

So this states that to specify a term of A -> B, it is sufficient to specify a term b: B for every x : A.

### Elimination Rule

The elimination rule for function type says that, given a function f: A -> B and a term a : A we can form the term f(a) : B.

### Computation Rule

A computation rule tells us what happens when the elimination rule is applied to a result of the introduction rule.




## terms

## Ideas

So the OS would be a type-directed interaciton space. OS with type theory would narrow the action space before AI even guesses.

e.g.

1. I highlight a snippet in a PDF and OS shows `Selection<Text>`.
2. I ask, "Summarize for my team", and OS would resolve `Summarize : Text -> Summary` and `Send : Summary x Recipient -> Email`.
3. It composes thse automatically, because the types fit.

Every new capability would be defined in terms of its input and output types. The graph grows and the OS's ability to auto compose grows exponentially.
