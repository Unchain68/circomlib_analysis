# How does it work

The code above uses a 2:1 multiplexer twice to implement a 4:1 multiplexer.

Here, a10[i], a1[i], a0[i], and a[i] are the output values ​​of the 2:1 multiplexer, and each value has the following meaning.

a10[i]: Select one of the four input values ​​c[i][3], c[i][2], c[i][1], c[i][0] using s1 and s0 do.
a1[i]: Selects one of the two input values ​​c[i][2] and c[i][0] using s1.
a0[i]: Selects one of the two input values ​​c[i][1] and c[i][0] using s0.
a[i]: always prints c[i][0].
Then, the output value out[i] of the 4:1 multiplexer is calculated by adding a10[i], a1[i], a0[i], and a[i] to the selected values. At this time, the weights of a10[i], a1[i], and a0[i] values ​​are determined using s1 and s0.

## What is Multiplexer?

A multiplexer (MUX) is a logic circuit that selects and outputs one input out of multiple input lines. A MUX typically has 2^n input lines and n select lines. Depending on the number of bits in the selection line, the number of inputs the multiplexer can select increases by a power of two.

A 2:1 multiplexer has two inputs (A, B) and one select input (S). If the selection input is 0, the output is selected to A, if it is 1, the output is selected to B.

A 4:1 multiplexer has four inputs (A, B, C, D) and two select inputs (S0, S1). Depending on the combination of S0 and S1 bits, one input of A, B, C, or D is output.

Multiplexers are usually used as building blocks for more complex logic circuits, and multiple multiplexers can be combined to form more complex logic circuits.

## How is one of A, B, C, and D inputs output according to the combination of S0 and S1?

S0 and S1 are 2-bit selection signals, let's assume that they have a value of 0 or 1. For a 2:1 multiplexer, when S0 is 0, it selects A as output, and when S0 is 1, it selects B as output. And connect the selected output to the output line.

In the case of a 4:1 multiplexer, the output is selected according to the values ​​of S0 and S1. For example, select A if S0 = 0 and S1 = 0, and select B if S0 = 0 and S1 = 1. Similarly, choose C if S0 = 1 and S1 = 0, and choose D if S0 = 1 and S1 = 1. And connect the selected output to the output line.

## Example

For example, in the case of a 2:1 multiplexer, S0 and S1 each have a value of 0 or 1, and the input to be output is determined by this value.

The following example shows output values ​​when S0 = 0, S1 = 0 and when S0 = 0, S1 = 1.
```
   S1 S0 | Output
   -------|-------
    0  0 |  A
    0  1 |  B
    1  0 |  C
    1  1 |  D
```
As shown in the table above, S0 and S1 each have a value of 0 or 1, and the output input is determined according to this value. If S0 = 0, S1 = 0, A is output, and if S0 = 0, S1 = 1, B is output. In the same way, even in a 4:1 multiplexer, the output input can be determined using the values ​​of S0 and S1.
