import 'package:json_annotation/json_annotation.dart';

import 'forecastday.dart';

part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
  List<Forecastday>? forecastday;

  Forecast({this.forecastday});

  @override
  String toString() => 'Forecast(forecastday: $forecastday)';

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return _$ForecastFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ForecastToJson(this);

  Forecast copyWith({
    List<Forecastday>? forecastday,
  }) {
    return Forecast(
      forecastday: forecastday ?? this.forecastday,
    );
  }
}
