import 'package:json_annotation/json_annotation.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

part 'some_forecaster.g.dart';

@JsonSerializable()
class SomeForecaster {
  Location? location;
  Current? current;
  Forecast? forecast;

  SomeForecaster({this.location, this.current, this.forecast});

  @override
  String toString() {
    return 'SomeForecaster(location: $location, current: $current, forecast: $forecast)';
  }

  factory SomeForecaster.fromJson(Map<String, dynamic> json) {
    return _$SomeForecasterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SomeForecasterToJson(this);

  SomeForecaster copyWith({
    Location? location,
    Current? current,
    Forecast? forecast,
  }) {
    return SomeForecaster(
      location: location ?? this.location,
      current: current ?? this.current,
      forecast: forecast ?? this.forecast,
    );
  }
}
