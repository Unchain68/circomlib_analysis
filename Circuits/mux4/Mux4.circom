pragma circom 2.0.0;

template Mux4() {
    var i;
    signal input c[16];  // Constants
    signal input s[4];   // Selector
    signal output out;

    component mux = MultiMux4(1);

    for (i=0; i<16; i++) {
        mux.c[0][i] <== c[i];
    }

    for (i=0; i<4; i++) {
      s[i] ==> mux.s[i];
    }

    mux.out[0] ==> out;
}
