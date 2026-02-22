import 'vehicle.dart';

void main() {
  print("========== CARS ==========");

  Car car1 = Car();
  car1.cylinderCapacity = 1600;
  car1.maxSpeed = 215;
  car1.model = 2023;
  car1.engineType = "Gasoline";
  car1.manufacturer = "Peugeot";
  car1.price = 1250000;
  car1.transmissionType = "Automatic";
  car1.numOfPassengers = 5;

  Car car2 = Car();
  car2.cylinderCapacity = 1800;
  car2.maxSpeed = 244;
  car2.model = 2022;
  car2.engineType = "Hybrid";
  car2.manufacturer = "BMW";
  car2.price = 2350000;
  car2.transmissionType = "Automatic";

  Car fastestSpeed = car1.maxSpeed > car2.maxSpeed ? car1 : car2;

  fastestSpeed.printInfo();
  print("\n========== TRUCKS ==========");

  Truck truck1 = Truck();
  truck1.cylinderCapacity = 2000;
  truck1.maxSpeed = 170;
  truck1.model = 2015;
  truck1.engineType = "Diesel";
  truck1.manufacturer = "Chevrolet";
  truck1.price = 1215000;
  truck1.loadCapacity = 2000;

  Truck truck2 = Truck();
  truck2.cylinderCapacity = 1800;
  truck2.maxSpeed = 150;
  truck2.model = 2024;
  truck2.engineType = "Diesel";
  truck2.manufacturer = "Daihatsu";
  truck2.price = 1720000;
  truck2.loadCapacity = 1250;

  Truck heaviestLoad = truck1.loadCapacity > truck2.loadCapacity
      ? truck1
      : truck2;
  heaviestLoad.printInfo();
  print("\n========== MOTORCYCLES ==========");

  Motorcycle bike1 = Motorcycle();
  bike1.cylinderCapacity = 750;
  bike1.maxSpeed = 110;
  bike1.model = 2011;
  bike1.engineType = "Electric";
  bike1.manufacturer = "Suzuki";
  bike1.price = 116000;
  bike1.numOfTires = 3;
  bike1.sideCar = true;

  Motorcycle bike2 = Motorcycle();
  bike2.cylinderCapacity = 1400;
  bike2.maxSpeed = 200;
  bike2.model = 2021;
  bike2.engineType = "Gasoline";
  bike2.manufacturer = "Honda";
  bike2.price = 1040500;
  bike2.numOfTires = 2;
  bike2.sideCar = false;

  Motorcycle cheapestBike = bike1.price < bike2.price ? bike1 : bike2;
  cheapestBike.printInfo();
}
