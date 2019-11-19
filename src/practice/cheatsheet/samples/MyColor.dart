class MyColor {
  int red;
  int green;
  int blue;

//  MyColor({this.red, this.green, this.blue}); // 명명된 매개변수 생성자
//  MyColor(this.red, this.green, this.blue); // this.를 사용한 생성자 자
//   MyColor([this.red=0,this.green=0,this.blue=0]) ; //선택적 매개변수와 기본값 0
  MyColor({this.red=0,this.green=0,this.blue=0}) ; //명명 매개변수 생성자와 기본값 0
}
