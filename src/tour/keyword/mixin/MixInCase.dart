class A {}

mixin X on A {}

//class Y on A{}//에러

class p extends A with X {}

//class Q extends X {} //에러