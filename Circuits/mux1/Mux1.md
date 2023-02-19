# How does it work

This code implements a single 2:1 multiplexer. The input of the multiplexer has two constants, c0 and c1, and s is the selector. The selector s has a value of 0 or 1, if s is 0 the output will be c0, if s is 1 the output will be c1.

This code is using the MultiMux1 template to create one multiplexer. The MultiMux1 template has n inputs and one output, each with a value of 0 or 1.

Mux1 uses only the first input and output of MultiMux1. The first input and output of MultiMux1 are connected to the input and output of the 2:1 multiplexer, respectively. In Mux1, wire the constants c0, c1 to the inputs of MultiMux1, wire selector s to the selector input of MultiMux1, and designate the first of MultiMux1's outputs as the output of Mux1. Mux1 configured in this way functions to select and output one of the two constants c0 and c1.

## Example
For example, to implement a 2:1 multiplexer that selects c[0] as the value when s=0 and c[1] as the value when s=1, you can use the Mux1() template. . Below is an example code implementation of this multiplexer using the Mux1() template.

```
template Mux1() {
    var i;
    signal input c[2];  // Constants
    signal input s;   // Selector
    signal output out;

    component mux = MultiMux1(1);

    for (i=0; i<2; i++) {
        mux.c[0][i] <== c[i];
    }

    s ==> mux.s;

    mux.out[0] ==> out;
}

component main = Mux1();
```
