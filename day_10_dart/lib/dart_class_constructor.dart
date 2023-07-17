class Wheel {
  int numberOfWheels = 0;
  Wheel({required int numberOfWheels}){
    this.numberOfWheels = numberOfWheels;
  }
}


class Car{
  String name = 'Car';
  Wheel dugui = Wheel(numberOfWheels: 4);

  Car ({required String name, required Wheel dugui}) {
    this.name = name;
    this.dugui = dugui;
  }
  void getInfo(){
    print('MY CAR NAME: ${this.name} WHEEL: ${this.dugui.numberOfWheels}');
  }
}
void main(){
  final gtrDugui = Wheel(numberOfWheels: 4);
  final car = Car(name: 'gtr', dugui: gtrDugui);
  car.getInfo();
  final dugaar = Door(numberOfDoor: 2);
  dugaar.getInfo();
  final floor = Floor(numberOfFloors: 3);
  floor.getInfo();
  final building = Building(name: 'Ajna 101' , floor: floor, door: dugaar);
  building.getInfo();
}
class Door{
  int numberOfDoors = 0;
  Door({required int numberOfDoor}){
    this.numberOfDoors = numberOfDoor;
  }
  void getInfo(){
    print('MY number ${this.numberOfDoors}');
  }
}
class Floor{
  int numberOfFloors = 0;
  Floor({required int numberOfFloors}){
    this.numberOfFloors = numberOfFloors;
  }
  void getInfo(){
    print('My floors ${this.numberOfFloors}');
  }
}
class Building{
  String name = 'get';
  Floor floor = Floor(numberOfFloors: 3);
  Door door = Door(numberOfDoor: 7);
  Building({required String name, required Floor floor, required Door door}){
    this.name = name;
    this.floor = floor;
    this.door = door;
  }
  void getInfo(){
    print('My name ${this.name} My floors${this.floor.numberOfFloors} My door${this.door.numberOfDoors}');
  }
}
