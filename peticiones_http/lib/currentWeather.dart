import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
//import 'controller/test_controller.dart';
import 'weather.dart';

class CurrentWeatherPage extends StatefulWidget {
  //const CurrentWeatherPage({Key? key, String title}) : super(key: key);


  @override
  _CurrentWeatherPageState createState() => _CurrentWeatherPageState();
}


class _CurrentWeatherPageState extends State<CurrentWeatherPage>{
  //final controller = TestController();
  //late Weather _weather;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot){
            // ignore: unnecessary_null_comparison
            if (snapshot.hasData) {
              Weather _weather = snapshot.data as Weather;
              // ignore: unnecessary_null_comparison
              if (_weather == null){
                return const Text("Error obteniendo el clima");
              } else {
                return weatherBox(_weather);
              }
            } else {
              return const CircularProgressIndicator();
            }
          },
          future: getCurrentWeather(),
        )
      ),
    );
  }

  Widget weatherBox(Weather _weather){
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10.0),
          child:
          Text("${_weather.temp}C",
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 55),
          ) 
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text(_weather.description)
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("Feels:${_weather.feelsLike}C")
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          child: Text("H:${_weather.high}C L:${_weather.low}C")
        ),
      ]
    );
  }

  Future  getCurrentWeather() async{
    late Weather weather;
    var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=Guadalajara&appid=c2b958b8b8ddee82038631f2046e3814&units=metric');

    final response = await http.get(url);
    print(response.body);
    if (response.statusCode == 200){
      weather = Weather.fromJson(jsonDecode(response.body));
    }else{
      //TODO: Throw error here
    }
    return weather;
  }
}

