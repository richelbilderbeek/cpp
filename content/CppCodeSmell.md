# ([C++](Cpp.md)) [code smell](CppCodeSmell.md)

A [code smell](CppCodeSmell.md) is 'any symptom in the source code of a
program that possibly indicates a deeper problem. Code smells are
usually not bugs—they are not technically incorrect and don't currently
prevent the program from functioning. Instead, they indicate weaknesses
in design that may be slowing down development or increasing the risk of
bugs or failures in the future' [1].

## Examples

-   Comments [2]: There's a fine line between comments that illuminate
    and comments that obscure. Are the comments necessary? Do they
    explain "why" and not "what"? Can you refactor the code so the
    comments aren't required? And remember, you're writing comments for
    people, not machines
-   Duplicated code [1,2]: identical or very similar code exists in
    more than one location. Duplicated code is the bane of
    software development. Stamp out duplication whenever possible. You
    should always be on the lookout for more subtle cases of
    near-duplication, too. Don't Repeat Yourself!
-   Long method [1,2]: a method, function, or procedure that has grown
    too large. All other things being equal, a shorter method is easier
    to read, easier to understand, and easier to troubleshoot. Refactor
    long methods into smaller methods if you can
-   Large class [1,2]: a class that has grown too large. See
    God object. Large classes, like long methods, are difficult to read,
    understand, and troubleshoot. Does the class contain too many
    responsibilities? Can the large class be restructured or broken into
    smaller classes?
-   Too many parameters [1,2]: a long list of parameters in a
    procedure or function make readability and code quality worse. The
    more parameters a method has, the more complex it is. Limit the
    number of parameters you need in a given method, or use an object to
    combine the parameters
-   Lazy class / Freeloader [1,2]: a class that does too little.
    Classes should pull their weight. Every additional class increases
    the complexity of a project. If you have a class that isn't doing
    enough to pay for itself, can it be collapsed or combined into
    another class?
-   Inappropriate intimacy [1,2]: a class that has dependencies on
    implementation details of another class. Watch out for classes that
    spend too much time together, or classes that interface in
    inappropriate ways. Classes should know as little as possible about
    each other
-   Feature envy [1,2]: a class that uses methods of another
    class excessively. Methods that make extensive use of another class
    may belong in another class. Consider moving this method to the
    class it is so envious of. Closely related to Middle Man
-   Middle Man [2]: If a class is delegating all its work, why does it
    exist? Cut out the middleman. Beware classes that are merely
    wrappers over other classes or existing functionality in
    the framework. Closely related to Feature Envy
-   Refused bequest [1,2]: a class that overrides a method of a base
    class in such a way that the contract of the base class is not
    honored by the derived class. See Liskov substitution principle. If
    you inherit from a class, but never use any of the inherited
    functionality, should you really be using inheritance?
-   Contrived complexity [1]: forced usage of overly complicated
    design patterns where simpler design would suffice
-   Excessively long identifiers [1]: in particular, the use of naming
    conventions to provide disambiguation that should be implicit in the
    software architecture
-   Excessively short identifiers [1]: the name of a variable should
    reflect its function unless the function is obvious
-   Excessive use of literals [1]: these should be coded as named
    constants, to improve readability and to avoid programming errors.
    Additionally, literals can and should be externalized into resource
    files/scripts where possible, to facilitate localization of software
    if it is intended to be deployed in different regions
-   Ubercallback [1]: a callback that is trying to do everything
-   Complex conditionals [1]: branches that check lots of unrelated
    conditions and edge cases that don't seem to capture the meaning of
    a block of code
-   Conditional Complexity [2]: Watch out for large conditional logic
    blocks, particularly blocks that tend to grow larger or change
    significantly over time. Consider alternative object-oriented
    approaches such as decorator, strategy, or state
-   Combinitorial Explosion [2]: You have lots of code that does
    almost the same thing.. but with tiny variations in data
    or behavior. This can be difficult to refactor-- perhaps using
    generics or an interpreter?
-   Type Embedded in Name [2]: Avoid placing types in method names;
    it's not only redundant, but it forces you to change the name if the
    type changes
-   Uncommunicative Name [2]: Does the name of the method succinctly
    describe what that method does? Could you read the method's name to
    another developer and have them explain to you what it does? If not,
    rename it or rewrite it
-   Inconsistent Names [2]: Pick a set of standard terminology and
    stick to it throughout your methods. For example, if you have
    Open(), you should probably have Close()
-   Dead Code [2]: Ruthlessly delete code that isn't being used.
    That's why we have source control systems!
-   Speculative Generality [2]: Write code to solve today's problems,
    and worry about tomorrow's problems when they actually materialize.
    Everyone loses in the "what if.." school of design. You (Probably)
    Aren't Gonna Need It
-   Oddball Solution [2]: There should only be one way of solving the
    same problem in your code. If you find an oddball solution, it could
    be a case of poorly duplicated code-- or it could be an argument for
    the adapter model, if you really need multiple solutions to the same
    problem
-   Temporary Field [2]: Watch out for objects that contain a lot of
    optional or unnecessary fields. If you're passing an object as a
    parameter to a method, make sure that you're using all of it and not
    cherry-picking single fields
-   Alternative Classes with Different Interfaces [2]: If two classes
    are similar on the inside, but different on the outside, perhaps
    they can be modified to share a common interface
-   Primitive Obsession [2]: Don't use a gaggle of primitive data type
    variables as a poor man's substitute for a class. If your data type
    is sufficiently complex, write a class to represent it
-   Data Class [2]: Avoid classes that passively store data. Classes
    should contain data and methods to operate on that data, too
-   Data Clumps [2]: If you always see the same data hanging around
    together, maybe it belongs together. Consider rolling the related
    data up into a larger class
-   Indecent Exposure [2]: Beware of classes that unnecessarily expose
    their internals. Aggressively refactor classes to minimize their
    public surface. You should have a compelling reason for every item
    you make public. If you don't, hide it
-   Message Chains [2]: Watch out for long sequences of method calls
    or temporary variables to get routine data. Intermediaries are
    dependencies in disguise
-   Divergent Change [2]: If, over time, you make changes to a class
    that touch completely different parts of the class, it may contain
    too much unrelated functionality. Consider isolating the parts that
    changed in another class
-   Shotgun Surgery [2]: If a change in one class requires cascading
    changes in several related classes, consider refactoring so that the
    changes are limited to a single class
-   Parallel Inheritance Hierarchies [2]: Every time you make a
    subclass of one class, you must also make a subclass of another.
    Consider folding the hierarchy into a single class
-   Incomplete Library Class [2]: We need a method that's missing from
    the library, but we're unwilling or unable to change the library to
    include the method. The method ends up tacked on to some
    other class. If you can't modify the library, consider isolating the
    method
-   Solution Sprawl [2]: If it takes five classes to do anything
    useful, you might have solution sprawl. Consider simplifying and
    consolidating your design

## External links

 * [Wikipedia page about code smell](https://en.wikipedia.org/wiki/Code_smell.md)
 * [Codinghorror page about code smell](http://www.codinghorror.com/blog/2006/05/code-smells.html)
 * [A code smell taxonomy](www.soberit.hut.fi/mmantyla/BadCodeSmellsTaxonomy.md)

## [References](CppReferences.md)

 * [1] [Wikipedia page about code smell](https://en.wikipedia.org/wiki/Code_smell.md)
 * [2] [Codinghorror page about code smell](http://www.codinghorror.com/blog/2006/05/code-smells.html)
