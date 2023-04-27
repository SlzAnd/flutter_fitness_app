class Weather {
  String name = '';
  String description = '';
  double temperature = 0;
  double perceived = 0;
  int pressure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.temperature,
   this.perceived, this.pressure, this.humidity);

   Weather.fromJson(Map<String, dynamic> map) {
    this.name = map['name'];
    this.temperature = (map['main']['temp'] - 273.15) ?? 0;
    this.perceived = (map['main']['feels_like'] - 273.15) ?? 0;
    this.pressure = map['main']['pressure'] ?? 0;
    this.humidity = map['main']['humidity'] ?? 0;
    this.description = map['weather'][0]['main'] ?? '';

   }
}