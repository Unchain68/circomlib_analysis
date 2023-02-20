# How does it work

해당 코드는 MiMC7 알고리즘을 구현한 Circom 템플릿입니다.

첫 번째 줄에서는 nrounds와 x_in을 input signal로 받고, k와 out을 output signal로 받습니다. k는 MiMC7 알고리즘의 키패딩값으로 사용되며, x_in은 입력값입니다. out은 MiMC7 알고리즘을 적용한 결과값으로 출력됩니다.

다음으로, 상수 c가 정의되어 있습니다. 이것은 MiMC7 알고리즘에서 사용하는 상수로, 91개의 값으로 이루어져 있습니다.

그리고, t2, t4, t6, t7이라는 변수가 정의되어 있습니다. 이들은 MiMC7 알고리즘의 수학적 연산을 위해 사용됩니다.

for 루프에서는 nrounds번 반복하며, t라는 변수에 k와 x_in의 값을 더한 값을 할당합니다. 이후, t2, t4, t6, t7을 계산합니다. t2는 t를 제곱한 값이며, t4는 t2의 제곱, t6은 t4와 t2의 곱으로 계산됩니다. 마지막으로, t6과 t를 곱한 값에 k를 더한 값을 out에 할당합니다.

즉, out은 nrounds번의 루프를 거쳐 MiMC7 알고리즘을 적용한 결과값입니다.

이상입니다.
```
template MiMC7(nrounds) {
    signal input x_in;
    signal input k;
    signal output out;

    var c[91] = [
        0,
        20888961410941983456478427210666206549300505294776164667214940546594746570981,
        ...
        ...
        13602139229813231349386885113156901793661719180900395818909719758150455500533
    ];

    var t;
    signal t2[nrounds];
    signal t4[nrounds];
    signal t6[nrounds];
    signal t7[nrounds-1];

    for (var i=0; i<nrounds; i++) {
        t = (i==0) ? k+x_in : k + t7[i-1] + c[i];
        t2[i] <== t*t;
        t4[i] <== t2[i]*t2[i];
        t6[i] <== t4[i]*t2[i];
        if (i<nrounds-1) {
            t7[i] <== t6[i]*t;
        } else {
            out <== t6[i]*t + k;
        }
    }
}
```
