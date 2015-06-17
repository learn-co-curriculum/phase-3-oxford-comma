# Oxford Comma List Formatter

## Objectives
1. Practice iterating over array elements
2. Practice manipulating arrays
3. Practice manipulating strings
4. Learn about converting data types

## Converting Types

In Ruby, there are a few methods available to us for converting data types. For example, it is possible to convert a string to an array, an array into a string, a range into an array among other conversions. You can learn more about conversion [here](http://www.dotnetperls.com/convert-ruby), but for now we'll just take a look at a few. 

**String to Array**

The `.split` method will convert a string into an array. The `.split` method takes an argument of the character in the string on which you want to split it. For example, if I have string that contains a comma separated list of items: 

`"hippo, giraffe, monkey, horse"`

I can call `.split` on it, with an argument of a `,` to create an array of animals:

```ruby
"hippo, giraffe, monkey, horse".split(",")
  => ["hippo", "giraffe", "monkey", "horse"]
```

**Range to Array**

The `.to_a` method, when called on a range, can convert a range of numbers to an array: 

```ruby
(1..10).to_a
  => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

**Array to String**

The `.join` method, when called on a string, will convert it into an array. This method takes in an optional argument of a character or string of characters that you'd like to insert between each index item. 

For example, calling `join` with no argument will create a string out of the array items by placing each array index item directly adjacent to the next index item. 

```ruby
["a", "b", "c"].join
  => "abc"
```
But calling `join` on the same string and giving it an argument of a `": )"` (smiley face) will place a smiley face between each letter. 

```ruby
["a", "b", "c"].join(" : ) ")
  => "a :) b : ) c : )"
```


## Instructions 
* Make a method that takes an array of strings and formats them to be one Oxford comma styled list. For instance, the method should turn the array `["fiddleheads","okra","kohlrabi"]` to the string  `"fiddleheads, okra, and kohlrabi"`.
* This is a test-driven lab so run `rspec` to get started.

* *Hint*: Remember, strings can be operated on very similarly to arrays. For instance, you can add elements to the end of strings with the `<<` method just like you can with arrays. 
* *Hint*: What methods are available to you for converting arrays to strings? You might want to look it up. 

## Resources
* [Wikipedia](http://en.wikipedia.org) - [Serial Comma](http://en.wikipedia.org/wiki/Serial_comma)
* [Dot Net Perls - Convert](http://www.dotnetperls.com/convert-ruby)