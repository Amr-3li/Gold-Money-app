part of 'gold_cubit.dart';

@immutable
sealed class GoldState {}

final class GoldInitial extends GoldState {}

final class GoldLoading extends GoldState {}

final class GoldLoaded extends GoldState {
  final GoldModel gold;

  GoldLoaded(this.gold);
}
final class GoldError extends GoldState {
  final String error;
  GoldError(this.error);
}
