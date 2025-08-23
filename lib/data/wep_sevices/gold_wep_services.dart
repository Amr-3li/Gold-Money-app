import 'package:dio/dio.dart';
import 'package:gold/Consts/secret.dart';

class GoldWepServices {
  final Dio _dio;

  GoldWepServices() : _dio = Dio(_dioOptions);

  static final BaseOptions _dioOptions = BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  );

  Future<Response<dynamic>> getCurrenciesRate() async {
    const params = {
      'api_key': Secret.currencyApiKey,
      'from': 'EGP',
      'to': 'EUR,KWD,GBP,USD,AED,SAR,RUB,OMR,QAR,SDG,CNY,JPY',
    };

    return await _dio.get(
      '${Secret.baseCurrencyApiUrl}${Secret.endpointOfCurrency}',
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> getGoldPrice() async {
    const params = {
      'api_key': Secret.metalApiKey,
      'metal': 'gold',
      'currency': 'EGP',
    };

    return await _dio.get(
      '${Secret.baseMetalApiUrl}${Secret.endpointOfMetal}',
      queryParameters: params,
    );
  }
}
