import 'package:gold/data/models/currency_model.dart';
import 'package:gold/data/models/gold_model.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';

class GoldRepository {
  GoldWepServices goldWepServices;
  GoldRepository({required this.goldWepServices});
  Future<CurrencyModel> getCurrenciesRate() async {
    final response = await goldWepServices.getCurrenciesRate();
    CurrencyModel gold = response.data.then((value) => CurrencyModel.fromJson(value));
    return gold;
  }

  Future<GoldModel> getGoldPrice() async {
    final response = await goldWepServices.getGoldPrice();
    GoldModel gold = response.data.then((value) => GoldModel.fromJson(value));
    return gold;
  }
}


