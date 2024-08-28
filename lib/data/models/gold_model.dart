class GoldModel {
  final String status;
  final DateTime timestamp;
  final String currency;
  final String unit;
  final Rate rate;

  GoldModel({
    required this.status,
    required this.timestamp,
    required this.currency,
    required this.unit,
    required this.rate,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      status: json['status'],
      timestamp: DateTime.parse(json['timestamp']),
      currency: json['currency'],
      unit: json['unit'],
      rate: Rate.fromJson(json['rate']),
    );
  }
}

class Rate {
  final double price;
  final double ask;
  final double bid;
  final double high;
  final double low;
  final double change;
  final double changePercent;

  Rate({
    required this.price,
    required this.ask,
    required this.bid,
    required this.high,
    required this.low,
    required this.change,
    required this.changePercent,
  });

  factory Rate.fromJson(Map<String, dynamic> json) {
    return Rate(
      price: json['price'].toDouble(),
      ask: json['ask'].toDouble(),
      bid: json['bid'].toDouble(),
      high: json['high'].toDouble(),
      low: json['low'].toDouble(),
      change: json['change'].toDouble(),
      changePercent: json['change_percent'].toDouble(),
    );
  }
}
