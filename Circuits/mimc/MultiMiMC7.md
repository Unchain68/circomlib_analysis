# How does it work

해당 코드는 입력값으로 주어지는 nInputs 개수의 신호에 대해 MiMC7 알고리즘을 적용하여 출력값을 계산하는 MultiMiMC7 템플릿을 정의하고 있습니다.

입력값으로는 nInputs 개수의 신호 in과 상수 k가 사용되며, 출력값으로는 신호 out이 사용됩니다. 또한, 계산에 필요한 내부 변수로는 신호 r이 사용됩니다.

템플릿 내부에서는 각 입력 신호마다 [MiMC7](https://github.com/Unchain68/circomlib_analysis/blob/main/Circuits/mimc/MiMC7.md) 컴포넌트를 생성하여 사용하며, k와 이전 라운드에서 계산된 r값, 입력 신호 in을 이용하여 현재 라운드의 r값을 계산합니다. 마지막 라운드에서는 계산된 r값을 출력값으로 사용합니다.

이러한 방식으로 입력값으로 주어진 신호들에 대해 MiMC7 알고리즘을 적용하여 출력값을 계산하는 템플릿이 정의되었습니다.
