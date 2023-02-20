pragma 2.0.0 

template MultiMiMC7(nInputs, nRounds) {
    signal input in[nInputs];
    signal input k;
    signal output out;
    signal r[nInputs +1];

    component mims[nInputs];

    r[0] <== k;
    for (var i=0; i<nInputs; i++) {
        mims[i] = MiMC7(nRounds);
        mims[i].x_in <== in[i];
        mims[i].k <== r[i];
        r[i+1] <== r[i] + in[i] + mims[i].out;
    }

    out <== r[nInputs];
}
