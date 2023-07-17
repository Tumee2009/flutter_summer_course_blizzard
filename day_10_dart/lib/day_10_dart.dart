

class Sprite{
  int x = 0;
  int y = 0;

  Sprite(int x, int y){
    this.x = x;
    this.y = y;
  }
  void makeNoise(){
    print('My Position is ${this.x} ${this.y}');
  }
}

class Shape{
  int lenght = 0;
  int height = 0;

  Shape({required int lenght, required int height}){
    this.lenght = lenght;
    this.height = height;
  }
  void showPosition(){
    print('My size is lenght = ${this.lenght} and height = ${this.height}');
  }
}
class Animal{
  Animal ({required String name, required String type}){
    this.name = name;
    this.type = type;
  }
  String name = 'Animal';
  String type = 'Animal';


  void makeNoise(){
    print('Animal Roaring');
  }
}


void main(){
  final Drum = Sprite(10,10);
  Drum.makeNoise();
  final shape = Shape(lenght: 20,height: 20);
  shape.showPosition();
  final animal = Animal(name: 'Tom cat',type: 'Cat');
  animal.makeNoise();
}