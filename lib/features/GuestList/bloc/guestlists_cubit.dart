import 'package:bloc/bloc.dart';
import '../model/guest_model.dart';
import 'guestlists_state.dart';

class GuestListsCubit extends Cubit<GuestListsState> {
  GuestListsCubit() : super(const GuestListsState());

  void getlist() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(guestLists: GuestModel.guestList, isLoading: false));
  }
}
