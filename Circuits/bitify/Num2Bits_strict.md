# How does it work

This is a Circom circuit that converts an input integer in into a binary representation and stores the individual bits in an output array out.

The circuit uses the Num2Bits template, which is a generic template for converting an input integer into a fixed-length binary representation. The Num2Bits template defines an input signal in, an array of output signals out, and a loop that extracts the individual bits of the input integer and stores them in the output array.

The Num2Bits_strict template builds on top of Num2Bits by adding an additional check for signal aliases. Signal aliases occur when two signals in a circuit have the same name, and they can cause problems during circuit compilation. The AliasCheck component is used to check for signal aliases and prevent them from occurring.

The Num2Bits_strict template connects the input signal in to the in signal of the Num2Bits template using the in ==> n2b.in statement. It then uses a for loop to connect the output signals of Num2Bits to the out array and the aliasCheck component. The statements n2b.out[i] ==> out[i] and n2b.out[i] ==> aliasCheck.in[i] connect the ith output signal of Num2Bits to the ith element of the out array and the ith input signal of the aliasCheck component, respectively.

Overall, this circuit takes an input integer and converts it into a binary representation, which can be useful for tasks such as binary encoding or decoding. The Num2Bits_strict template adds an additional check for signal aliases to ensure that the circuit can be compiled correctly.
