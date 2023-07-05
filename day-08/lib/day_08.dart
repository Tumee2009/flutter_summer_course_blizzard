import 'package:day_08/add.dart';
import 'dart:io';
import 'dart:math';

void main(){
  print('day-08');
  print(add(4, 5));
  print(minus(5, 6));
  final myObject = A();
  print(myObject.x);
  print(myObject.y);
  print(myObject.nextInt());
  print(myObject.add(5, 5));
  final Random random = Random();
  final int randomNumber = random.nextInt(100) + 1;
  print(randomNumber);
  final myObject2 = B();
  print(myObject2.x);
  print(myObject2.y);
  final Random random2 = Random();
  final int randomNumber2 = random.nextInt(100) + 1;
  print(randomNumber2);
}
class A {
  int x = 0;
  int y = 0;
  int nextInt(){
    return 100;
  }
  int add(int a, int b) {
    return a + b;
  }
}
//exercises1
class B {
  int x = 0;
  int y = 0;
}
//exercises2



