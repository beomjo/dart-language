abstract class Super {
  void method() {
    print("Super");
  }
}

class MySuper implements Super {
  void method() {
    print("MySuper");
  }
}

mixin Mixin on Super {
  void method() {
    super.method();
    print("Sub");
  }
}

class Client extends MySuper with Mixin {}

void main() {
  Client().method();
}

/**
 *13 행에서 18 행까지의 mixin 선언은 Super에 대한 수퍼 클래스 제한을 나타냅니다.
 * 믹스 인이 슈퍼에서 제공하는 기능을 사용하기 때문에이 믹스 인을 클래스에 적용하려면이 클래스가 슈퍼 클래스를 확장하거나 구현해야합니다..
 * */
