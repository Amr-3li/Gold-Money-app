import 'package:gold/data/models/currency_model.dart';
import 'package:gold/data/models/gold_model.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';

class GoldRepository {
  GoldWepServices goldWepServices;
  GoldRepository(this.goldWepServices);
  Future<CurrencyModel> getCurrenciesRate() async {
     final response = await goldWepServices.getCurrenciesRate();
    CurrencyModel currency = CurrencyModel.fromJson(response.data);
    return currency;
  }

  Future<GoldModel> getGoldPrice() async {
    final response = await goldWepServices.getGoldPrice();
    GoldModel gold = GoldModel.fromJson(response.data);
    return gold;
  }
}
