# How does it work?

The AliasCheck template provides a function to check if two or more input signals are referencing the same variable.

For example, suppose a function takes two inputs a and b. However, if a and b are aliases to each other, i.e. refer to the same variable, the function always returns the same result, regardless of the size of the value passed as input. These issues can compromise the safety and consistency of your program.

Therefore, the AliasCheck template avoids this problem by checking that the variables passed as input are aliases to each other. This increases the safety and consistency of the program.

Therefore, the AliasCheck template can be utilized in programming related to cryptocurrency technologies such as security protocols and smart contracts using Circcom.

## Example

```
var a = 3;
var b = a;
```
The above variables a and b are aliases for each other. This is because a and b refer to the same memory location.

If so, you can use AliasCheck to avoid these problems. You can use AliasCheck to check if a and b are aliases for each other, like so:

```
component aliasCheck = AliasCheck();
a ==> aliasCheck.in[0];
b ==> aliasCheck.in[1];
```
AliasCheck outputs 0 only if a and b are aliases to each other. So, this lets the programmer know that a and b are aliases for each other.

## What is alias

An alias is when two or more variables or objects with different names refer to the same memory location.

For example, let's say you have the following code.
```
var a = 3;
var b = a;
```
In the code above, variables a and b are aliases to each other. This is because a and b refer to the same memory location.

Aliases should be handled with care, as they can cause unintended behavior in programming.
