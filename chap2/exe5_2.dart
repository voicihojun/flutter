void main() {
  Car bmw = new Car(320, 100000, 'BMW');
  Car toyota = new Car(250, 70000, 'TOYOTA');
  Car ford = new Car(200, 80000, 'FORD');

  bmw.saleCar();
  bmw.saleCar();
  bmw.saleCar();
  print(bmw.price);
}


class Car {
  late int maxSpeed;
  late double price;
  late String name;

  Car(int maxSpeed, double price, String name) {
      this.maxSpeed = maxSpeed;
    this.price = price;
    this.name = name;
  }
// the return type of saleCar() in the book is int but i changed it as double because of error. 
  double saleCar() {
    price = price * 0.9;
    return price;
  }

}