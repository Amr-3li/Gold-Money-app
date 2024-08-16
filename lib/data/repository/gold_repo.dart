import 'package:gold/data/models/Gold.dart';
import 'package:gold/data/wep_sevices/gold_wep_services.dart';

class GoldRepository {
  GoldWepServices goldWepServices;
  GoldRepository({required this.goldWepServices});
  Future<GoldModel> getGoldPrice() async {
    final response = await goldWepServices.getGoldPrice();
    GoldModel gold = response.data.then((value) => GoldModel.fromJson(value));
    return gold;
  }
}


