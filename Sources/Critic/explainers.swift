// DO NOT EDIT: this is generated by Scripts/generateexplainers.py

extension Explainer {
public static var all: [String: Explainer] {
[

    "E001": .init(
        id: "E001",
        summary:      """
                      A documented parameter is not recognized as part of the function signature.
                      """,
        rightExample: """
                      /// - parameter bar: description of bar
                      func foo(bar: Int)
                      """,
        wrongExample: """
                      /// - parameter baz: description of bar
                      func foo(bar: Int)
                      """
    ),

    "E002": .init(
        id: "E002",
        summary:      """
                      Documentation for a parameter found in the function signature is missing.
                      """,
        rightExample: """
                      /// Overall description of foo
                      ///
                      /// - parameter bar: description of bar
                      func foo(bar: Int)
                      """,
        wrongExample: """
                      /// Overall description of foo, but no description of `bar`
                      func foo(bar: Int)
                      """
    ),

    "E003": .init(
        id: "E003",
        summary:      """
                      Function throws, but documentation for what it throws is missing.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter bar: this is bar
                      ///
                      /// - throws: foo throws all kind of good stuff
                      func foo(bar: Int) throws
                      """,
        wrongExample: """
                      /// Description
                      ///
                      /// - parameter bar: this is bar
                      func foo(bar: Int) throws
                      """
    ),

    "E004": .init(
        id: "E004",
        summary:      """
                      Function returns a value, but documentation for what it returns is missing.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter bar: this is bar
                      ///
                      /// - returns: foo returns a good boi
                      func foo(bar: Int) throws
                      """,
        wrongExample: """
                      /// Documentation for return is missing
                      ///
                      /// - parameter bar: this is bar
                      func foo(bar: Int) -> Int
                      """
    ),

    "E005": .init(
        id: "E005",
        summary:      """
                      Documentation for parameters, throws, returns, should start with exactly 1 space
                      character before `-` if if.  it's followed by a `parameter` keyword. If it's in
                      a grouped list of parameters (followed by the parameter name), it must start
                      with 3 space characters (so that its `-` is aligned with "P" in the
                      ` - Parameters` header).  Any other number of whitespaces is incorrect.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter foo: 1 space
                      /// - parameter bar: 1 space => happiness
                      ///
                      /// - throws: nice
                      ///
                      /// - returns: 1 space
                      func f(foo: Int, bar: Int) throws -> Int
                      
                      /// Description
                      ///
                      /// - parameters
                      ///   - foo: Notice how
                      ///   - bar: all the `-`s
                      ///   - baz: are lined up ventically with "p"
                      func g(foo: Int, bar: Int, baz: Int)
                      """,
        wrongExample: """
                      /// Description
                      ///
                      ///    - parameter foo: too many spaces before `-`
                      ///- parameter bar: no space before `-` is bad
                      ///
                      ///- throws: no good for throws neither
                      ///
                      ///   - returns: weird
                      func f(foo: Int, bar: Int) throws -> Int
                      
                      /// Description
                      ///
                      /// - parameters
                      ///     - foo: too many spaces before `-`
                      ///- bar: no space before `-`
                      ///  - baz: two few spaces before `-`
                      func g(foo: Int, bar: Int, baz: Int)
                      """
    ),

    "E006": .init(
        id: "E006",
        summary:      """
                      If a `- parameter`, `- throws`, or `- returns` starts docstring, there must be
                      exactly 1 space character between `-` and the first letter.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter foo: one space character!
                      /// - parameter bar: this is good.
                      ///
                      /// - throws: great
                      ///
                      /// - returns: looks good
                      func f(foo: Int, bar: Int) throws -> Int
                      """,
        wrongExample: """
                      /// Description
                      ///
                      /// -parameter foo: no space, bad
                      /// -  parameter bar: two many spaces, bad
                      ///
                      /// -throws: no good for throws neither
                      ///
                      /// -  returns: weird
                      func f(foo: Int, bar: Int) throws -> Int
                      """
    ),

    "E007": .init(
        id: "E007",
        summary:      """
                      Exactly 1 whitespace preceeds name of the parameter in its docstring.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter foo: good
                      func f(foo: Int)
                      
                      /// Description
                      ///
                      /// - parameters
                      ///   - foo: good
                      ///   - bar: very good
                      func f(foo: Int, bar: Int)
                      """,
        wrongExample: """
                      /// Description
                      ///
                      /// - parameter   foo: too many spaces
                      func f(foo: Int)
                      
                      /// Description
                      ///
                      /// - parameters
                      ///   -   foo: too many spaces!
                      ///   -  bar: not quite right!
                      func f(foo: Int, bar: Int)
                      """
    ),

    "E008": .init(
        id: "E008",
        summary:      """
                      In documentation for parameters, throws, and returns, the `:` before their
                      description must have any whitespace characters between it and the word before
                      it.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter foo: 1 space
                      ///
                      /// - throws: the best
                      ///
                      /// - returns: yay
                      func f(foo: Int) throws -> Int
                      """,
        wrongExample: """
                      /// Description
                      ///
                      /// - parameter foo : oh no, there's a space before `:`
                      ///
                      /// - throws : this is no good for throws
                      ///
                      /// - returns  : more spaces isn't better
                      func f(foo: Int) throws -> Int
                      """
    ),

    "E009": .init(
        id: "E009",
        summary:      """
                      Each line of description should start at the same column or later. All
                      descriptions of parameters should start on the same column dictated by the
                      paramter with the longest name.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - parameter foo:    Notice how everything is vertically aligned
                      ///                     even for coninuation lines like this one
                      /// - parameter barbaz: Description
                      ///                         of
                      ///                            barbaz
                      func f(foo: Int, barbaz: Int)
                      """,
        wrongExample: """
                      /// Description
                      ///
                      /// - parameter foo: 1 space after `:` is not enough because it's not aligned
                      /// with `barbaz`. Also, this line started too early
                      /// - parameter barbaz: but starting in later columns in continued lines is
                      ///                         fine!
                      func f(foo: Int, barbaz: Int)
                      """
    ),

    "E010": .init(
        id: "E010",
        summary:      """
                      Description for throws and returns should start with 1 space character after
                      `:`.
                      """,
        rightExample: """
                      /// Description
                      ///
                      /// - throws: One space :)
                      ///
                      /// - returns: <= Best space
                      func f() throws -> Int
                      """,
        wrongExample: """
                      /// Description
                      ///
                      /// - throws:  One space too many after `:`
                      ///
                      /// - returns:No space no bueno.
                      func f() throws -> Int
                      """
    ),

    "E011": .init(
        id: "E011",
        summary:      """
                      Keywords such as `Parameters`, `Throws`, and `Returns` must be spelled
                      correctly. Their initial letter must be uppercased or lowercased depending on
                      _convention_ specified for the project.
                      """,
        rightExample: """
                      /// Let's say the convention is lower case
                      ///
                      /// - parameter bar: good
                      /// - parameter baz: nice
                      ///
                      /// - returns: got it
                      func foo(bar: Int, baz: Int) -> Int
                      """,
        wrongExample: """
                      /// Let's say the convention is lower case
                      ///
                      /// - Parameter bar: violation! Convention dictates `parameter`
                      /// - parameterz baz: mis-spelled.
                      ///
                      /// - return: spelling is wrong, missed an "s" at the end
                      func foo(bar: Int, baz: Int) -> Int
                      """
    ),

    "E012": .init(
        id: "E012",
        summary:      """
                      Document sections (overall description, parameters, throws) should include an
                      empty comment line at its end to separate it and the next section.
                      """,
        rightExample: """
                      /// Overall description
                      /// it continues.
                      ///
                      /// - Parameters
                      ///   - first: description for first parameter
                      ///   - second: description for first parameter
                      ///
                      /// - Throws: what gets thrown
                      ///
                      /// - Returns: good stuff
                      """,
        wrongExample: """
                      /// Overall description
                      /// it continues.
                      /// - Parameters
                      ///   - first: description for first parameter
                      ///   - second: description for first parameter
                      /// - Throws: what gets thrown
                      /// - Returns: good stuff
                      """
    ),

    "E013": .init(
        id: "E013",
        summary:      """
                      Function signature does not throw yet a docstring for throw is present. Or,
                      function doesn't return anything yet a docstring for return is present.
                      """,
        rightExample: """
                      /// Description
                      /// - parameter foo: description for foo
                      func f(foo: Int)
                      """,
        wrongExample: """
                      /// Description
                      /// - parameter foo: description for foo
                      /// - throws: throws some things?
                      /// - returns: returns otherthings?
                      func f(foo: Int)
                      """
    ),
]
}
}
