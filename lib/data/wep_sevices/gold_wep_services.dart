import 'package:dio/dio.dart';

class GoldWepServices {
  Dio? dio;
  GoldWepServices() {
    dio = Dio();
  }

  Future<Response> getGoldPrice() async {
    final response = await dio!.get(
        'https://api.metalpriceapi.com/v1/latest?api_key=f9dec4c3db8bcf61d0daa45542b20ce9&base=egp&currencies=EUR,XAU,XAG,USD,GBP,SAR,KWD');
    return response;
  }
}
