import 'package:bloc/bloc.dart';

import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState().init());
}
