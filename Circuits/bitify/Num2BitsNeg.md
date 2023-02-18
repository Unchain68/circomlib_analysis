# How does it work

The Num2BitsNeg template is defined with a single parameter n, which specifies the number of bits in the output array.
The template defines an input signal in, which represents the input integer value, and an array of output signals out, which represent the binary bits of the input value.
A variable lc1 is initialized to 0.
A component isZero is declared but not yet instantiated.
A variable neg is calculated as the two's complement of the input value if it is negative. If the input value is positive or zero, neg is simply set to 0.
A loop is used to iterate over each bit in the output array.
For each bit, the loop extracts the corresponding bit from the neg value and stores it in the out array using the expression out[i] <-- (neg >> i) & 1.
The loop also checks that each out[i] signal is either 0 or 1 using the expression out[i] * (out[i] -1 ) === 0. This ensures that the output signals are binary signals, meaning that they can only take on the values 0 or 1.
The lc1 variable is updated for each out[i] signal using the expression lc1 += out[i] * 2**i. This calculates the integer value of the binary representation.
The in signal is connected to the in signal of the isZero component using the expression in ==> isZero.in. This component checks if the input value is zero.
The isZero component has an output signal out that is true if the input value is zero, and false otherwise.
The final expression lc1 + isZero.out * 2**n === 2**n - in checks that the output value is correct. If the input value is zero, the output value should be zero. If the input value is negative, the output value should be the two's complement binary representation of the input value. If the input value is positive, the output value should be the binary representation of the input value.
Here's an example of how you could use the Num2BitsNeg template in a Circom circuit:

```


