class WeatherModel {
  final String name;
  final double tempc;
  final String text;
  final String mainIcon;
  final List<Forecastday> forecastday;

  WeatherModel({
    required this.name,
    required this.tempc,
    required this.text,
    required this.mainIcon,
    required this.forecastday,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> jsonData) {
    return WeatherModel(
      name: jsonData['location']['name'],
      tempc: jsonData["current"]['temp_c'],
      text: jsonData["current"]["condition"]["text"],
      mainIcon: jsonData["current"]["condition"]["icon"],
      forecastday: (jsonData['forecast']['forecastday'] as List)
          .map((e) => Forecastday.fromJson(e))
          .toList(),
    );
  }
}

class Forecastday {
  final String date;
  final String listIcon;
  final double avgT;
  final List<Hour> hours;

  Forecastday({
    required this.date,
    required this.listIcon,
    required this.avgT,
    required this.hours,
  });

  factory Forecastday.fromJson(Map<String, dynamic> jsonData) {
    return Forecastday(
      date: jsonData['date'],
      avgT: jsonData['day']['avgtemp_c'],
      listIcon: jsonData['day']["condition"]["icon"],
      hours: (jsonData['hour'] as List).map((e) => Hour.fromJson(e)).toList(),
    );
  }
}

class Hour {
  final String time;
  final double tempC;
  final String icon;

  Hour({required this.time, required this.tempC, required this.icon});

  factory Hour.fromJson(Map<String, dynamic> jsonData) {
    return Hour(
      time: jsonData['time'],
      tempC: jsonData['temp_c'],
      icon: jsonData['condition']['icon'],
    );
  }
}
