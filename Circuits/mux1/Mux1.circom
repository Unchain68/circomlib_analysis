pragma circom 2.0.0;

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
