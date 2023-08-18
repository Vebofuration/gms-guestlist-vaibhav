import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/guest_model.dart';
part 'guestlists_state.freezed.dart';

@freezed
abstract class GuestListsState with _$GuestListsState {
  const factory GuestListsState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<GuestModel> guestLists,
  }) = _GuestListsState;
}
