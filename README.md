# Darling-HelloWorld

Hello World, a windowed AppKit application that works on Darling HQ.

Install Darling HQ as usual: [Build Instructions](https://docs.darlinghq.org/build-instructions.html)

Install Command-line developer tools: [Installing Software](https://docs.darlinghq.org/installing-software.html)

Then, compile and run the examples, for example AppKit:

```
darling shell
clang -lobjc -framework Foundation -framework AppKit -o HelloAppKit.app/HelloAppKit HelloAppKit.m
./HelloAppKit.app/HelloAppKit
```
