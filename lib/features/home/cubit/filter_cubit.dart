import 'package:booking_app/features/home/cubit/filter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterCubit extends Cubit<FilterCubitState> {
  FilterCubit() : super(const FilterCubitState.initial());

  void changeSports() {
    emit(state.copyWith(isSports: !state.isSports));
  }

  void changeMusic() {
    emit(state.copyWith(isMusic: !state.isMusic));
  }

  void changeFood() {
    emit(state.copyWith(isFood: !state.isFood));
  }

  void changeArt() {
    emit(state.copyWith(isArt: !state.isArt));
  }

  void changeLove() {
    emit(state.copyWith(isLove: !state.isLove));
  }

  void changeEducation() {
    emit(state.copyWith(isEducation: !state.isEducation));
  }
}
