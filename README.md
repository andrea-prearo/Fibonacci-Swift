#Fibonacci

A short collection of Fibonacci sequence implementations in Swift

1. [Implementations](#implementations)
2. [References](#references)
3. [Notes](#notes)

## Implementations
- Recursive Method
- Generator
- Sequence

Each implementation is provided with and without [memoization](https://en.wikipedia.org/wiki/Memoization).

## References

### Articles:
- [Experimenting with Swift Sequences and Generators](https://www.uraimo.com/2015/11/12/experimenting-with-swift-2-sequencetype-generatortype/)
- [The Fibonacci SequenceType](https://bandes-stor.ch/blog/2015/08/05/the-fibonacci-sequencetype/)

## Notes
As all the Fibonacci sequence implementations in this repo use the 'UInt' type, they will overflow the maximum value and crash after the 92th Fibonacci number.
