import 'package:Garde/services/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
import 'package:weather/weather_library.dart';

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Future<List<Weather>> forecasts;
  WeatherStation weatherStation;

  // TODO does this get called more than once when navigating?
  @override
  void initState() {
    super.initState();
    weatherStation = new WeatherStation(DotEnv().env['WEATHER_API_KEY']);
    asyncInitState();
  }

  void asyncInitState() async {
    LocationData locationData =
        await context.read<LocationService>().getLocation();
    forecasts = weatherStation.fiveDayForecast(
        locationData.latitude, locationData.longitude);
  }

  @override
  Widget build(Object context) {
    return FutureBuilder(
        future: forecasts,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text("Weather is loading");
          }

          if (snapshot.hasError) {
            return Text("Oops, we couldn't fetch the weather.");
          }

          // snapshot.data
          List<Weather> forecasts = snapshot.data;
          print(forecasts);
          return Text(forecasts.length.toString());
        });
  }
}
