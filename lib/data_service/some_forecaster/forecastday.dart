import 'package:json_annotation/json_annotation.dart';

import 'astro.dart';
import 'day.dart';
import 'hour.dart';

part 'forecastday.g.dart';

@JsonSerializable()
class Forecastday {
  String? date;
  @JsonKey(name: 'date_epoch')
  int? dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;

  Forecastday({this.date, this.dateEpoch, this.day, this.astro, this.hour});

  @override
  String toString() {
    return 'Forecastday(date: $date, dateEpoch: $dateEpoch, day: $day, astro: $astro, hour: $hour)';
  }

  factory Forecastday.fromJson(Map<String, dynamic> json) {
    return _$ForecastdayFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ForecastdayToJson(this);

  Forecastday copyWith({
    String? date,
    int? dateEpoch,
    Day? day,
    Astro? astro,
    List<Hour>? hour,
  }) {
    return Forecastday(
      date: date ?? this.date,
      dateEpoch: dateEpoch ?? this.dateEpoch,
      day: day ?? this.day,
      astro: astro ?? this.astro,
      hour: hour ?? this.hour,
    );
  }
}
