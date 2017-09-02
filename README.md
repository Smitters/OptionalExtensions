# ExtOptional

Handful of functions, operators and properties that will help you work with `Optional` types.

## Usage

Call `require()` to require `Optional` values to be non-`nil`, or throws fatalError with optionally given `hint` for debugging purposes:

```swift
let gitURL = URL(string: "https://github.com/Smitters/OptionalExtensions")
let request = URLRequest(url: gitURL.require(hint: "Invalid URL"))
```

Call `unwrap(default: value)` to return the contained value or a default:

```swift
let daysInMonth: Int? = nil
let daysCount = daysInMonth.unwrap(default: 31) // returns 31
```

**Property** `isNone` returns true if the `Optional` is nil:

```swift
let x: String? = nil
let r = x.isNone // r == true
```

**Property** `isSome` returns true if the `Optional` is .some:

```swift
let x: String? = "foo"
let r = x.isSome() // r == true
```

**Property** `stringRepresentation` ensures that the text you set never ever includes that annoying additional `“Optional(…)”`:

```swift
let x: String? = "String"
let y: Int? = 31
let z: String? = nil

print("\(x) \(y) \(z)") // Optional("String") Optional(31) nil
print("\(x.stringRepresentation) \(y.stringRepresentation) \(z.stringRepresentation)") // String 31
```

**Swift 3** Removes Optional Comparison Operators, but you can achieve same behaviour adding `*` symbol to Swift's standart comparison operator:

```swift
let x: Int? = 43
let y: Int? = 5
let z: Int? = nil

x *>= y // true
x *> z // true
z *> x // false
y *< x // true
x *<= 43 // true
x *<= y //false

let array: [Int?] = [2, 4, nil, 1, 5, nil, 3]
let sortedArray = array.sorted(by: *>) // [5, 4, 3, 2, 1, nil, nil]

```

## Installation

**CocoaPods:**

Add `pod "ExtOptional"` to your `Podfile`.

**Manual:**

Clone the repo and drag the file `OptionalExtensions.swift` into your Xcode project.

## Help, feedback or suggestions?

- [Open an issue](https://github.com/Smitters/OptionalExtensions/issues/new) if you need help, if you found a bug, or if you want to discuss a feature request.
- [Open a PR](https://github.com/Smitters/OptionalExtensions/pull/new/master) if you want to make some change to `ExtOptional`.
- Contact [@smetankin93 on Twitter](https://twitter.com/smetankin93) for discussions, news & announcements about new pods.
