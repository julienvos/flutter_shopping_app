import 'package:json_annotation/json_annotation.dart';

import 'condition.dart';

part 'day.g.dart';

@JsonSerializable()
class Day {
  @JsonKey(name: 'maxtemp_c')
  double? maxtempC;
  @JsonKey(name: 'maxtemp_f')
  double? maxtempF;
  @JsonKey(name: 'mintemp_c')
  double? mintempC;
  @JsonKey(name: 'mintemp_f')
  double? mintempF;
  @JsonKey(name: 'avgtemp_c')
  double? avgtempC;
  @JsonKey(name: 'avgtemp_f')
  double? avgtempF;
  @JsonKey(name: 'maxwind_mph')
  double? maxwindMph;
  @JsonKey(name: 'maxwind_kph')
  double? maxwindKph;
  @JsonKey(name: 'totalprecip_mm')
  int? totalprecipMm;
  @JsonKey(name: 'totalprecip_in')
  double? totalprecipIn;
  @JsonKey(name: 'avgvis_km')
  int? avgvisKm;
  @JsonKey(name: 'avgvis_miles')
  int? avgvisMiles;
  int? avghumidity;
  @JsonKey(name: 'daily_will_it_rain')
  int? dailyWillItRain;
  @JsonKey(name: 'daily_chance_of_rain')
  int? dailyChanceOfRain;
  @JsonKey(name: 'daily_will_it_snow')
  int? dailyWillItSnow;
  @JsonKey(name: 'daily_chance_of_snow')
  int? dailyChanceOfSnow;
  Condition? condition;
  int? uv;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });

  @override
  String toString() {
    return 'Day(maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, totalprecipMm: $totalprecipMm, totalprecipIn: $totalprecipIn, avgvisKm: $avgvisKm, avgvisMiles: $avgvisMiles, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv)';
  }

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);

  Day copyWith({
    double? maxtempC,
    double? maxtempF,
    double? mintempC,
    double? mintempF,
    double? avgtempC,
    double? avgtempF,
    double? maxwindMph,
    double? maxwindKph,
    int? totalprecipMm,
    double? totalprecipIn,
    int? avgvisKm,
    int? avgvisMiles,
    int? avghumidity,
    int? dailyWillItRain,
    int? dailyChanceOfRain,
    int? dailyWillItSnow,
    int? dailyChanceOfSnow,
    Condition? condition,
    int? uv,
  }) {
    return Day(
      maxtempC: maxtempC ?? this.maxtempC,
      maxtempF: maxtempF ?? this.maxtempF,
      mintempC: mintempC ?? this.mintempC,
      mintempF: mintempF ?? this.mintempF,
      avgtempC: avgtempC ?? this.avgtempC,
      avgtempF: avgtempF ?? this.avgtempF,
      maxwindMph: maxwindMph ?? this.maxwindMph,
      maxwindKph: maxwindKph ?? this.maxwindKph,
      totalprecipMm: totalprecipMm ?? this.totalprecipMm,
      totalprecipIn: totalprecipIn ?? this.totalprecipIn,
      avgvisKm: avgvisKm ?? this.avgvisKm,
      avgvisMiles: avgvisMiles ?? this.avgvisMiles,
      avghumidity: avghumidity ?? this.avghumidity,
      dailyWillItRain: dailyWillItRain ?? this.dailyWillItRain,
      dailyChanceOfRain: dailyChanceOfRain ?? this.dailyChanceOfRain,
      dailyWillItSnow: dailyWillItSnow ?? this.dailyWillItSnow,
      dailyChanceOfSnow: dailyChanceOfSnow ?? this.dailyChanceOfSnow,
      condition: condition ?? this.condition,
      uv: uv ?? this.uv,
    );
  }
}
