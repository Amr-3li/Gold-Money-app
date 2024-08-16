// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:gold/data/models/Gold.dart';
import 'package:gold/data/repository/gold_repo.dart';
import 'package:meta/meta.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit(this.goldRepository) : super(GoldInitial());
  GoldRepository goldRepository;
  Future<void> getGoldPrice() async {
    emit(GoldLoading());
    try {
      GoldModel gold = await goldRepository.getGoldPrice();
      emit(GoldLoaded( gold));
    } catch (e) {
      emit(GoldError(e.toString()));
    }
  }
}
