class Vehicle {
  int? _cylinderCapacity;
  int? _maxSpeed;
  String? _engineType;
  int? _model;
  String? _manufacturer;
  int? _price;

  set cylinderCapacity(int cylinderCapacity) {
    if (cylinderCapacity > 0)
      this._cylinderCapacity = cylinderCapacity;
    else
      this._cylinderCapacity = 0;
  }

  // شلنا الـ ! وحطينا ?? 0
  int get cylinderCapacity => _cylinderCapacity ?? 0;

  set maxSpeed(int maxSpeed) {
    if (maxSpeed > 0)
      this._maxSpeed = maxSpeed;
    else
      this._maxSpeed = 0;
  }

  int get maxSpeed => _maxSpeed ?? 0;

  set engineType(String engineType) {
    this._engineType = engineType;
  }

  String get engineType => _engineType ?? "Unknown";

  set model(int model) {
    if (model > 0)
      this._model = model;
    else
      this._model = 0;
  }

  int get model => _model ?? 0;

  set manufacturer(String manufacturer) {
    this._manufacturer = manufacturer;
  }

  String get manufacturer => _manufacturer ?? "Unknown";

  set price(int price) {
    if (price > 0)
      this._price = price;
    else
      this._price = 0;
  }

  int get price => _price ?? 0;

  printBasicInfo() {
    print("Cylinder Capacity: $cylinderCapacity CC");
    print("Maximum Speed: $maxSpeed km/hr");
    print("Model: $model");
    print("Engine Type: $engineType");
    print("Manufacturer: $manufacturer");
    print("Price: $price Pounds");
  }
}

class Car extends Vehicle {
  String? _transmissionType;
  int? _numOfPassengers;

  set transmissionType(String transmissionType) =>
      this._transmissionType = transmissionType;
  String get transmissionType => _transmissionType ?? "Manual";

  set numOfPassengers(int numOfPassengers) {
    if (numOfPassengers > 0)
      this._numOfPassengers = numOfPassengers;
    else
      this._numOfPassengers = 0;
  }

  int get numOfPassengers => _numOfPassengers ?? 0;

  printInfo() {
    super.printBasicInfo();
    print("Transmission Type: $transmissionType");
    print("Number of passengers: $numOfPassengers");
  }
}

class Truck extends Vehicle {
  int? _loadCapacity;

  set loadCapacity(int loadCapacity) {
    if (loadCapacity > 0)
      this._loadCapacity = loadCapacity;
    else
      this._loadCapacity = 0;
  }

  int get loadCapacity => this._loadCapacity ?? 0;

  printInfo() {
    super.printBasicInfo();
    print("Load Capacity: $loadCapacity");
  }
}

class Motorcycle extends Vehicle {
  int? _numOfTires;
  bool? _sideCar;

  set numOfTires(int numOfTires) {
    if (numOfTires > 0)
      this._numOfTires = numOfTires;
    else
      this._numOfTires = 0;
  }

  int get numOfTires => _numOfTires ?? 2;

  set sideCar(bool sideCar) {
    this._sideCar = sideCar;
  }

  bool get sideCar => _sideCar ?? false;

  printInfo() {
    super.printBasicInfo();
    print("Number of tires: $numOfTires");
    print("Has a Sidecar : $sideCar");
  }
}
