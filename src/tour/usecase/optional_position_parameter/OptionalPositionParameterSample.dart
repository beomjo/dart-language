int sumUp(int a, int b, int c) => a + b + c;

int sumUpToFive(int a, [int b, int c, int d, int e]) {
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  if (d != null) sum += d;
  if (e != null) sum += e;
  return sum;
}

void optionalPositionalParameters() {
  //Dart를 사용하면 이러한 위치 매개 변수를 대괄호로 묶어 선택적으로 지정할 수 있습니다.
  int total;
  total ??= 0;
  total = sumUp(1, 2, 3);
  print(total);
  total = sumUpToFive(1, 2);
  print(total);
  total = sumUpToFive(1, 2, 3, 4, 5);
  print(total);
}

main(){
  optionalPositionalParameters();
}