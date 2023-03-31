# Darling-HelloWorld

An example of a windowed AppKit application that works on Darling HQ

Install Darling HQ as usual: [Build Instructions](https://docs.darlinghq.org/build-instructions.html)

Install Command-line developer tools: [Installing Software](https://docs.darlinghq.org/installing-software.html)

Then, compile and run:

```
darling shell
clang -lobjc -framework Foundation -framework AppKit -o HelloAppKit.app/HelloAppKit HelloAppKit.m
./HelloAppKit.app/HelloAppKit
```
