// ignore_for_file: non_constant_identifier_names

class CurrencyModel {
  final String base;
  final Currencies results;
  final DateTime updated;

  CurrencyModel({
    required this.base,
    required this.results,
    required this.updated,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      base: json['base'],
      results: Currencies.fromJson(json['results']),
      updated: DateTime.parse(json['updated']),
    );
  }
}

class Currencies {
  final double EUR;
  final double KWD;
  final double GBP;
  final double USD;
  final double AED;
  final double SAR;
  final double RUB;
  final double OMR;

  Currencies({
    required this.EUR,
    required this.KWD,
    required this.GBP,
    required this.USD,
    required this.AED,
    required this.SAR,
    required this.RUB,
    required this.OMR,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) {
    return Currencies(
      EUR: json['EUR'],
      KWD: json['KWD'],
      GBP: json['GBP'],
      USD: json['USD'],
      AED: json['AED'],
      SAR: json['SAR'],
      RUB: json['RUB'],
      OMR: json['OMR'],
    );
  }
}
