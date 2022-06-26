import 'package:bloc/bloc.dart';
import 'package:weather_app/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/domain/models/my_forecast_entity.dart';
import 'package:weather_app/domain/models/my_weather_entity.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepositoryImpl _weatherRepositoryImpl = WeatherRepositoryImpl();

  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherFetch>(
      (event, emit) async {
        emit(WeatherLoading());

        ///fetch weather one day
        try {
          final _weatherFetch =
              await _weatherRepositoryImpl.fetchCityWeather(event.city);
          emit(WeatherLoaded(weather: _weatherFetch));
        } on Exception catch (e) {
          emit(WeatherLoadFailure(error: e.toString()));
        }
      },
    );
    on<ForecastFetch>((event, emit) async {
      emit(WeatherLoading());

      ///fetch three-day weather forecast
      try {
        final _forecastFetch =
            await _weatherRepositoryImpl.fetchCityForecast(event.city);
        emit(ForecastLoaded(forecast: _forecastFetch));
      } on Exception catch (e) {
        emit(WeatherLoadFailure(error: e.toString()));
      }
    });
  }
}
