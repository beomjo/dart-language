import '../dynamic/DynamicSample.dart';

/**
 * factory항상 클래스의 새 인스턴스를 생성하지 않는 생성자를 구현할 때 키워드를 사용하십시오 .
 * 예를 들어 팩토리 생성자는 캐시에서 인스턴스를 반환하거나 하위 유형의 인스턴스를 반환 할 수 있습니다.
 * 다음 예제는 캐시에서 객체를 반환하는 팩토리 생성자를 보여줍니다.
 * 캐시에 이미 로거가 있다면 생성하지않고, 없다면 생성합니다.
 */

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

main() {
  var logger = Logger('UI');
  logger.log('Button cxlicked');

}
