# How does it work

This code implements a single 2:1 multiplexer. The input of the multiplexer has two constants, c0 and c1, and s is the selector. The selector s has a value of 0 or 1, if s is 0 the output will be c0, if s is 1 the output will be c1.

This code is using the MultiMux1 template to create one multiplexer. The MultiMux1 template has n inputs and one output, each with a value of 0 or 1.

Mux1 uses only the first input and output of MultiMux1. The first input and output of MultiMux1 are connected to the input and output of the 2:1 multiplexer, respectively. In Mux1, wire the constants c0, c1 to the inputs of MultiMux1, wire selector s to the selector input of MultiMux1, and designate the first of MultiMux1's outputs as the output of Mux1. Mux1 configured in this way functions to select and output one of the two constants c0 and c1.
