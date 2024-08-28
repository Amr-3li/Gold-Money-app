part of 'gold_cubit.dart';

@immutable
sealed class GoldCurrencyState {}

final class GoldCurrencyInitial extends GoldCurrencyState {}

// get gold price ==================================================

final class GoldLoading extends GoldCurrencyState {}

final class GoldLoaded extends GoldCurrencyState {
  final GoldModel gold;

  GoldLoaded(this.gold);
}

final class GoldError extends GoldCurrencyState {
  final String error;
  GoldError(this.error);
}

//Get Currencies rate ===============================================

final class CurrenciesLoading extends GoldCurrencyState {}

final class CurrenciesLoaded extends GoldCurrencyState {
  final CurrencyModel currencies;

  CurrenciesLoaded(this.currencies);
}

final class CurrenciesError extends GoldCurrencyState {
  final String error;
  CurrenciesError(this.error);
}
