// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:gold/data/models/currency_model.dart';
import 'package:gold/data/models/gold_model.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:meta/meta.dart';

part 'gold_state.dart';

class GoldCurrencyCubit extends Cubit<GoldCurrencyState> {
  GoldCurrencyCubit(this.goldRepository) : super(GoldCurrencyInitial());
  GoldRepository goldRepository;
  Future<void> getGoldPrice() async {
    emit(GoldLoading());
    try {
      GoldModel gold = await goldRepository.getGoldPrice();
      emit(GoldLoaded(gold));
    } catch (e) {
      emit(GoldError(e.toString()));
    }
  }
  Future<void> getCurrencies() async {
    emit(CurrenciesLoading());
    try {
      CurrencyModel gold = await goldRepository.getCurrenciesRate();
      emit(CurrenciesLoaded(gold));
    } catch (e) {
      emit(CurrenciesError(e.toString()));
    }
  }
}
