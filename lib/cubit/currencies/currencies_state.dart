part of 'currencies_cubit.dart';

@immutable
sealed class CurrenciesState {}

final class CurrenciesInitial extends CurrenciesState {}
final class CurrenciesLoading extends CurrenciesState {}

final class CurrenciesLoaded extends CurrenciesState {
  final CurrencyModel currencies;

  CurrenciesLoaded(this.currencies);
}

final class CurrenciesError extends CurrenciesState {
  final String error;
  CurrenciesError(this.error);
}