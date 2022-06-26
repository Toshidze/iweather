abstract class IconHelper {
  static String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  static String getMessage(int temp) {
    if (temp > 25) {
      return 'Возьми себе 🍦';
    } else if (temp > 20) {
      return 'Самое время надеть шорты и 👕';
    } else if (temp < 10) {
      return 'Тебе нужны 🧣 и 🧤';
    } else {
      return 'Захвати 🧥 на всякий случай';
    }
  }
}
