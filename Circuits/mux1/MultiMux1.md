# How does it work

This code is a template code that creates a multiplexer that selects one of n input values ​​and outputs it. The multiplexer's input is given as c, an nx2 array, and the multiplexer's selection is given as s. The output is given as an array of length n called out.

In the for loop of the code, it iterates n times, and within the loop, out[i] is calculated, which is (c[i][1] - c[i][0]) * s + c[i][0 ]. This value is calculated in the following way:

When the value of s is 0, the value of out[i] becomes c[i][0].
When the value of s is 1, the value of out[i] becomes c[i][1].
Here, (c[i][1] - c[i][0]) is the difference between the two inputs, and multiplication by s separates the selected and unselected values. For example, if the value of s is 0 (c[i][1] - c[i][0]) * s becomes 0 and the value of c[i][0] is output, and if the value of s is 1 ( c[i][1] - c[i][0]) * s becomes c[i][1] - c[i][0], outputting the value c[i][1].

So this code provides the operations needed to implement a multiplexer.

```
template MultiMux1(n) {
    signal input c[n][2];  // Constants
    signal input s;   // Selector
    signal output out[n];

    for (var i=0; i<n; i++) {

        out[i] <== (c[i][1] - c[i][0])*s + c[i][0];

    }
}
```
## What is Multiplexer

A multiplexer is a circuit that selects one output from multiple inputs. A binary selection signal is usually used to determine the selection.

For example, when there are four inputs A, B, C, and D, a 4:1 multiplexer can be implemented using two selection signals, s0 and s1. You can select one output among the inputs using the value of the selection signal.

A multiplexer selects one of several input signals and sends it to the output, which is used in various fields such as data selection or data transmission. For example, when collecting data from multiple sensors, you can select and process data from one input channel using a multiplexer.

## Why are you using a two-dimensional array?

In this code, c is a two-dimensional array with n two elements. Each c[i] contains the two values ​​needed to select the ith input.

Therefore, c is defined as a two-dimensional array to handle multiple inputs. Using this arrangement, the MultiMux1 template can easily be expanded for a given number of inputs. For example, if c represents 3 inputs, c[0][0] and c[0][1] are the values ​​needed to select the 0th input, and c[1][0] and c[ 1][1] would be the value needed to select the 1st input.

Two-dimensional arrays are useful for processing and storing multidimensional data in this way.

## What is the difference between [Mux1](https://github.com/Unchain68/circomlib_analysis/blob/main/Circuits/mux1/Mux1.md) and MultiMux1?

Mux1 is a code that implements a 2:1 multiplexer, and MultiMux1 is a code that implements an n:1 multiplexer. Mux1 implements a simple multiplexer that receives two constants as input and outputs one value according to the selection signal s, MultiMux1 implements a multiplexer that receives n constants as input and outputs n values ​​according to the selection signal s it did. The two codes have slightly different implementations because the number of input and output signals is different.
![image](https://user-images.githubusercontent.com/109026317/219955697-b52743ce-f9f2-4ed4-b4b9-6c8419a1770d.png)


## Example of MultiMux1

Here is an example of circom code that implements a 4:1 multiplexer using MultiMux1. It receives the c[4][2] array and the s signal as input values, and selects the values ​​in the out[4] array.

```
template Mux4() {
    signal input c[4][2];
    signal input s[2];
    signal output out[4];

    component mux = MultiMux1(4);

    for (var i=0; i<4; i++) {
        mux.c[i][0] <== c[i][0];
        mux.c[i][1] <== c[i][1];
    }

    mux.s[0] <== s[0];
    mux.s[1] <== s[1];

    for (var i=0; i<4; i++) {
        mux.out[i] ==> out[i];
    }
}
```
Here, MultiMux1 creates a multiplexer that can select n out signals given n as inputs. In the Mux4 code, we use MultiMux1(4) to create a multiplexer that can select 4 outputs and use the values ​​c[4][2] and s[2] as inputs to the multiplexer. Select the out[4] array as the output.

