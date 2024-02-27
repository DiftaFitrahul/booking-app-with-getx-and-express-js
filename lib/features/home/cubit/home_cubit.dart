import 'package:booking_app/features/home/cubit/home_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/offsets_drawre_open_utils.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(const HomeCubitState.initial());

  void toggleShowFilter({required bool value}) {
    emit(state.copyWith(isShowTextFilter: value));
  }

  void toggleDrawer(
      {required double widthScreen, required double heightScreen}) {
    emit(state.copyWith(
      isDrawerOpen: !state.isDrawerOpen,
      xOffset: state.isDrawerOpen ? 260 : 0,
      yOffset: state.isDrawerOpen ? 70 : 0,
      zOffset: state.isDrawerOpen ? 1500 : 0,
      xOffsetNavigationBar: state.isDrawerOpen ? 260 : 0,
      yOffsetNavigationBar: state.isDrawerOpen
          ? getOffsetNavigationBarDraweOpen(heightScreen)
          : 0,
      xOffsetFloatingActionButton:
          state.isDrawerOpen ? getOffseetFABDrawerOpen(widthScreen) : 0,
      yOffsetFloatingActionButton: state.isDrawerOpen ? -16 : 0,
    ));
  }
}
