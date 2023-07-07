class Sprite {
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  int size = 100;
  int directio = 90;
  bool show = true;

  void say (String name){
    print('Hello My name is $name ');
  }

  void move(int x) {
    this.x = x;
    print(' I moved ${this.x}');
  }
  String getName(String name){
    this.name = name;
    return this.name;
  }
}
void main() {
  final Dee = Sprite();
  Dee.say('Dee');
  Dee.move(10);
  print(Dee.getName('Dee'));
  final Chick = Sprite();
  Chick.say('Chick');
  Chick.move(100);
  print(Chick.getName('Chick'));
  final Ruby = Sprite();
  Ruby.say('Ruby');
  Ruby.move(200);
  print(Ruby.getName('Ruby'));
}