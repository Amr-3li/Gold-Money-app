import 'package:dio/dio.dart';

class GoldWepServices {
  Dio? dio;
  GoldWepServices() {
    dio = Dio();
  }

  Future<Response> getCurrenciesRate() async {
    final response = await dio!.get(
        'https://api.fastforex.io/fetch-multi?api_key=5a67f57012-475d620173-six0jb&from=EGP&to=EUR,KWD,GBP,USD,AED,SAR,RUB,OMR');
    return response;
  }
   Future <Response > getGoldPrice() async {
    final response = await dio!.get(
        'https://api.metals.dev/v1/metal/spot?api_key=TYKLPK5P7TXBLLSJBMSL938SJBMSL&metal=gold&currency=EGP');
    return response;
  }
}
