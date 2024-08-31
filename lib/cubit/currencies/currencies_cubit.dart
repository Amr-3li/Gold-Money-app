import 'package:bloc/bloc.dart';
import 'package:gold/data/models/currency_model.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:meta/meta.dart';

part 'currencies_state.dart';

class CurrenciesCubit extends Cubit<CurrenciesState> {
  CurrenciesCubit( this.goldRepository) : super(CurrenciesInitial());
  GoldRepository goldRepository;

  Future<void> getCurrencies() async {
    emit(CurrenciesLoading());
    try {
      CurrencyModel currency = await goldRepository.getCurrenciesRate();
      emit(CurrenciesLoaded(currency));
    } catch (e) {
      emit(CurrenciesError(e.toString()));
    }
  }
}
