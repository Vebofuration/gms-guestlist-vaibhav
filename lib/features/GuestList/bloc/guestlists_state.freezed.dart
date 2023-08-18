// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guestlists_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestListsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<GuestModel> get guestLists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestListsStateCopyWith<GuestListsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestListsStateCopyWith<$Res> {
  factory $GuestListsStateCopyWith(
          GuestListsState value, $Res Function(GuestListsState) then) =
      _$GuestListsStateCopyWithImpl<$Res, GuestListsState>;
  @useResult
  $Res call({bool isLoading, String errorMessage, List<GuestModel> guestLists});
}

/// @nodoc
class _$GuestListsStateCopyWithImpl<$Res, $Val extends GuestListsState>
    implements $GuestListsStateCopyWith<$Res> {
  _$GuestListsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? guestLists = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      guestLists: null == guestLists
          ? _value.guestLists
          : guestLists // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestListsStateCopyWith<$Res>
    implements $GuestListsStateCopyWith<$Res> {
  factory _$$_GuestListsStateCopyWith(
          _$_GuestListsState value, $Res Function(_$_GuestListsState) then) =
      __$$_GuestListsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage, List<GuestModel> guestLists});
}

/// @nodoc
class __$$_GuestListsStateCopyWithImpl<$Res>
    extends _$GuestListsStateCopyWithImpl<$Res, _$_GuestListsState>
    implements _$$_GuestListsStateCopyWith<$Res> {
  __$$_GuestListsStateCopyWithImpl(
      _$_GuestListsState _value, $Res Function(_$_GuestListsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? guestLists = null,
  }) {
    return _then(_$_GuestListsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      guestLists: null == guestLists
          ? _value._guestLists
          : guestLists // ignore: cast_nullable_to_non_nullable
              as List<GuestModel>,
    ));
  }
}

/// @nodoc

class _$_GuestListsState implements _GuestListsState {
  const _$_GuestListsState(
      {this.isLoading = false,
      this.errorMessage = '',
      final List<GuestModel> guestLists = const []})
      : _guestLists = guestLists;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<GuestModel> _guestLists;
  @override
  @JsonKey()
  List<GuestModel> get guestLists {
    if (_guestLists is EqualUnmodifiableListView) return _guestLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestLists);
  }

  @override
  String toString() {
    return 'GuestListsState(isLoading: $isLoading, errorMessage: $errorMessage, guestLists: $guestLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestListsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._guestLists, _guestLists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      const DeepCollectionEquality().hash(_guestLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestListsStateCopyWith<_$_GuestListsState> get copyWith =>
      __$$_GuestListsStateCopyWithImpl<_$_GuestListsState>(this, _$identity);
}

abstract class _GuestListsState implements GuestListsState {
  const factory _GuestListsState(
      {final bool isLoading,
      final String errorMessage,
      final List<GuestModel> guestLists}) = _$_GuestListsState;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<GuestModel> get guestLists;
  @override
  @JsonKey(ignore: true)
  _$$_GuestListsStateCopyWith<_$_GuestListsState> get copyWith =>
      throw _privateConstructorUsedError;
}
