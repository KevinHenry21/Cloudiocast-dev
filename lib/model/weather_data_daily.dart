class WeatherDataDaily {
  List<Daily> daily;
  WeatherDataDaily({required this.daily});

  factory WeatherDataDaily.fromJson(Map<String, dynamic> json) =>
      WeatherDataDaily(
          daily: List<Daily>.from(json['daily'].map((e) => Daily.fromJson(e))));
}

class Daily {
  int? dt;
  Temp? temp;
  List<Weather>? weather;
  double? rain;
  int? sunrise;
  int? sunset;
  int? moonrise;
  int? moonset;
  int? pressure;
  int? humidity;
  double? dewPoint;
  double? windSpeed;
  int? windDeg;
  double? windGust;
  int? clouds;
  double? pop;
  double? uvi;

  Daily({
    this.dt,
    this.temp,
    this.weather,
    this.rain,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.clouds,
    this.pop,
    this.uvi,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
    dt: json['dt'] as int?,
    temp: json['temp'] == null
        ? null
        : Temp.fromJson(json['temp'] as Map<String, dynamic>),
    weather: (json['weather'] as List<dynamic>?)
        ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    sunrise: json['sunrise'] as int?,
    sunset: json['sunset'] as int?,
    moonrise: json['moonrise'] as int?,
    moonset: json['moonset'] as int?,
    pressure: json['pressure'] as int?,
    humidity: json['humidity'] as int?,
    dewPoint: (json['dew_point'] as num?)?.toDouble(),
    windSpeed: (json['wind_speed'] as num?)?.toDouble(),
    windDeg: json['wind_deg'] as int?,
    windGust: (json['wind_gust'] as num?)?.toDouble(),
    clouds: json['clouds'] as int?,
    pop: (json['pop'] as num?)?.toDouble(),
    rain: (json['rain'] as num?)?.toDouble(),
    uvi: (json['uvi'] as num?)?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    'dt': dt,
    'temp': temp?.toJson(),
    'weather': weather?.map((e) => e.toJson()).toList(),
    'rain': rain,
    'sunrise': sunrise,
    'sunset': sunset,
    'moonrise': moonrise,
    'moonset': moonset,
    'pressure': pressure,
    'humidity': humidity,
    'dew_point': dewPoint,
    'wind_speed': windSpeed,
    'wind_deg': windDeg,
    'wind_gust': windGust,
    'clouds': clouds,
    'pop': pop,
    'uvi': uvi,
  };
}

class Temp {
  double? day;
  int? min;
  int? max;
  double? night;
  double? eve;
  double? morn;

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory Temp.fromJson(Map<String, dynamic> json) => Temp(
    day: (json['day'] as num?)?.toDouble(),
    min: (json['min'] as num?)?.round(),
    max: (json['max'] as num?)?.round(),
    night: (json['night'] as num?)?.toDouble(),
    eve: (json['eve'] as num?)?.toDouble(),
    morn: (json['morn'] as num?)?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    'day': day,
    'min': min,
    'max': max,
    'night': night,
    'eve': eve,
    'morn': morn,
  };
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    id: json['id'] as int?,
    main: json['main'] as String?,
    description: json['description'] as String?,
    icon: json['icon'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'main': main,
    'description': description,
    'icon': icon,
  };
}