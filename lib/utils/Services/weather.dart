class WeatherModel {
  String getWeatherIcon(int condition){
    if(condition < 300){
      return '🌩️';
    }
    else if(condition < 400){
      return '🌧️';
    }
    else if(condition < 600){
      return '☔';
    }
    else if(condition < 700){
      return '☃️';
    }
    else if(condition < 800){
      return '🌤️';
    }
    else if(condition == 800){
      return '☀️';
    }
    else if(condition < 804){
      return '☁️';
    }
    else{
      return '❗';
    }
  }

  String getMessage(int temp){
    if(temp > 25){
      return 'It\'s sunny. Don\'t forget to wear your sunscreen and carry your umbrella!!';
    }
    else if(temp > 20){
      return 'Relax yourself with some icecream';
    }
    else if(temp > 10){
      return 'Today\'s weather is really nice for a walk';
    }
    else if(temp < 10){
      return 'Make yourself some soup and relax';
    }
    else{
      return 'Bring a coat just in case';
    }
  }

  String aqiMessage(int _aqi){
    if(_aqi == 1){
      return 'Good';
    }
    else if(_aqi == 2){
      return 'Fair';
    }
    else if(_aqi == 3){
      return 'Moderate';
    }
    else if(_aqi == 4){
      return 'Poor';
    }
    else if(_aqi == 5){
      return 'Very Poor';
    }
    else{
      return 'Not Known';
    }
  }
}