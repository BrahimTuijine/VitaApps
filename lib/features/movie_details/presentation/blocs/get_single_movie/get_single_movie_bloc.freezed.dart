// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_single_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetSingleMovieEvent {
  String get imdbID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imdbID) getSingleMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imdbID)? getSingleMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imdbID)? getSingleMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSingleMovie value) getSingleMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSingleMovie value)? getSingleMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSingleMovie value)? getSingleMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GetSingleMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSingleMovieEventCopyWith<GetSingleMovieEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleMovieEventCopyWith<$Res> {
  factory $GetSingleMovieEventCopyWith(
          GetSingleMovieEvent value, $Res Function(GetSingleMovieEvent) then) =
      _$GetSingleMovieEventCopyWithImpl<$Res, GetSingleMovieEvent>;
  @useResult
  $Res call({String imdbID});
}

/// @nodoc
class _$GetSingleMovieEventCopyWithImpl<$Res, $Val extends GetSingleMovieEvent>
    implements $GetSingleMovieEventCopyWith<$Res> {
  _$GetSingleMovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSingleMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imdbID = null,
  }) {
    return _then(_value.copyWith(
      imdbID: null == imdbID
          ? _value.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSingleMovieImplCopyWith<$Res>
    implements $GetSingleMovieEventCopyWith<$Res> {
  factory _$$GetSingleMovieImplCopyWith(_$GetSingleMovieImpl value,
          $Res Function(_$GetSingleMovieImpl) then) =
      __$$GetSingleMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imdbID});
}

/// @nodoc
class __$$GetSingleMovieImplCopyWithImpl<$Res>
    extends _$GetSingleMovieEventCopyWithImpl<$Res, _$GetSingleMovieImpl>
    implements _$$GetSingleMovieImplCopyWith<$Res> {
  __$$GetSingleMovieImplCopyWithImpl(
      _$GetSingleMovieImpl _value, $Res Function(_$GetSingleMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imdbID = null,
  }) {
    return _then(_$GetSingleMovieImpl(
      imdbID: null == imdbID
          ? _value.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSingleMovieImpl implements GetSingleMovie {
  const _$GetSingleMovieImpl({required this.imdbID});

  @override
  final String imdbID;

  @override
  String toString() {
    return 'GetSingleMovieEvent.getSingleMovie(imdbID: $imdbID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleMovieImpl &&
            (identical(other.imdbID, imdbID) || other.imdbID == imdbID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imdbID);

  /// Create a copy of GetSingleMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleMovieImplCopyWith<_$GetSingleMovieImpl> get copyWith =>
      __$$GetSingleMovieImplCopyWithImpl<_$GetSingleMovieImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imdbID) getSingleMovie,
  }) {
    return getSingleMovie(imdbID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imdbID)? getSingleMovie,
  }) {
    return getSingleMovie?.call(imdbID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imdbID)? getSingleMovie,
    required TResult orElse(),
  }) {
    if (getSingleMovie != null) {
      return getSingleMovie(imdbID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSingleMovie value) getSingleMovie,
  }) {
    return getSingleMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSingleMovie value)? getSingleMovie,
  }) {
    return getSingleMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSingleMovie value)? getSingleMovie,
    required TResult orElse(),
  }) {
    if (getSingleMovie != null) {
      return getSingleMovie(this);
    }
    return orElse();
  }
}

abstract class GetSingleMovie implements GetSingleMovieEvent {
  const factory GetSingleMovie({required final String imdbID}) =
      _$GetSingleMovieImpl;

  @override
  String get imdbID;

  /// Create a copy of GetSingleMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleMovieImplCopyWith<_$GetSingleMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetSingleMovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel result) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsModel result)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleMovieInitial value) initial,
    required TResult Function(_GetSingleMovieLoading value) loading,
    required TResult Function(_GetSingleMovieLoaded value) loaded,
    required TResult Function(_GetSingleMovieError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleMovieInitial value)? initial,
    TResult? Function(_GetSingleMovieLoading value)? loading,
    TResult? Function(_GetSingleMovieLoaded value)? loaded,
    TResult? Function(_GetSingleMovieError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleMovieInitial value)? initial,
    TResult Function(_GetSingleMovieLoading value)? loading,
    TResult Function(_GetSingleMovieLoaded value)? loaded,
    TResult Function(_GetSingleMovieError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleMovieStateCopyWith<$Res> {
  factory $GetSingleMovieStateCopyWith(
          GetSingleMovieState value, $Res Function(GetSingleMovieState) then) =
      _$GetSingleMovieStateCopyWithImpl<$Res, GetSingleMovieState>;
}

/// @nodoc
class _$GetSingleMovieStateCopyWithImpl<$Res, $Val extends GetSingleMovieState>
    implements $GetSingleMovieStateCopyWith<$Res> {
  _$GetSingleMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSingleMovieInitialImplCopyWith<$Res> {
  factory _$$GetSingleMovieInitialImplCopyWith(
          _$GetSingleMovieInitialImpl value,
          $Res Function(_$GetSingleMovieInitialImpl) then) =
      __$$GetSingleMovieInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSingleMovieInitialImplCopyWithImpl<$Res>
    extends _$GetSingleMovieStateCopyWithImpl<$Res, _$GetSingleMovieInitialImpl>
    implements _$$GetSingleMovieInitialImplCopyWith<$Res> {
  __$$GetSingleMovieInitialImplCopyWithImpl(_$GetSingleMovieInitialImpl _value,
      $Res Function(_$GetSingleMovieInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSingleMovieInitialImpl implements _GetSingleMovieInitial {
  const _$GetSingleMovieInitialImpl();

  @override
  String toString() {
    return 'GetSingleMovieState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleMovieInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleMovieInitial value) initial,
    required TResult Function(_GetSingleMovieLoading value) loading,
    required TResult Function(_GetSingleMovieLoaded value) loaded,
    required TResult Function(_GetSingleMovieError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleMovieInitial value)? initial,
    TResult? Function(_GetSingleMovieLoading value)? loading,
    TResult? Function(_GetSingleMovieLoaded value)? loaded,
    TResult? Function(_GetSingleMovieError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleMovieInitial value)? initial,
    TResult Function(_GetSingleMovieLoading value)? loading,
    TResult Function(_GetSingleMovieLoaded value)? loaded,
    TResult Function(_GetSingleMovieError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetSingleMovieInitial implements GetSingleMovieState {
  const factory _GetSingleMovieInitial() = _$GetSingleMovieInitialImpl;
}

/// @nodoc
abstract class _$$GetSingleMovieLoadingImplCopyWith<$Res> {
  factory _$$GetSingleMovieLoadingImplCopyWith(
          _$GetSingleMovieLoadingImpl value,
          $Res Function(_$GetSingleMovieLoadingImpl) then) =
      __$$GetSingleMovieLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSingleMovieLoadingImplCopyWithImpl<$Res>
    extends _$GetSingleMovieStateCopyWithImpl<$Res, _$GetSingleMovieLoadingImpl>
    implements _$$GetSingleMovieLoadingImplCopyWith<$Res> {
  __$$GetSingleMovieLoadingImplCopyWithImpl(_$GetSingleMovieLoadingImpl _value,
      $Res Function(_$GetSingleMovieLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSingleMovieLoadingImpl implements _GetSingleMovieLoading {
  const _$GetSingleMovieLoadingImpl();

  @override
  String toString() {
    return 'GetSingleMovieState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleMovieLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleMovieInitial value) initial,
    required TResult Function(_GetSingleMovieLoading value) loading,
    required TResult Function(_GetSingleMovieLoaded value) loaded,
    required TResult Function(_GetSingleMovieError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleMovieInitial value)? initial,
    TResult? Function(_GetSingleMovieLoading value)? loading,
    TResult? Function(_GetSingleMovieLoaded value)? loaded,
    TResult? Function(_GetSingleMovieError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleMovieInitial value)? initial,
    TResult Function(_GetSingleMovieLoading value)? loading,
    TResult Function(_GetSingleMovieLoaded value)? loaded,
    TResult Function(_GetSingleMovieError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetSingleMovieLoading implements GetSingleMovieState {
  const factory _GetSingleMovieLoading() = _$GetSingleMovieLoadingImpl;
}

/// @nodoc
abstract class _$$GetSingleMovieLoadedImplCopyWith<$Res> {
  factory _$$GetSingleMovieLoadedImplCopyWith(_$GetSingleMovieLoadedImpl value,
          $Res Function(_$GetSingleMovieLoadedImpl) then) =
      __$$GetSingleMovieLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetailsModel result});
}

/// @nodoc
class __$$GetSingleMovieLoadedImplCopyWithImpl<$Res>
    extends _$GetSingleMovieStateCopyWithImpl<$Res, _$GetSingleMovieLoadedImpl>
    implements _$$GetSingleMovieLoadedImplCopyWith<$Res> {
  __$$GetSingleMovieLoadedImplCopyWithImpl(_$GetSingleMovieLoadedImpl _value,
      $Res Function(_$GetSingleMovieLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GetSingleMovieLoadedImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MovieDetailsModel,
    ));
  }
}

/// @nodoc

class _$GetSingleMovieLoadedImpl implements _GetSingleMovieLoaded {
  const _$GetSingleMovieLoadedImpl({required this.result});

  @override
  final MovieDetailsModel result;

  @override
  String toString() {
    return 'GetSingleMovieState.loaded(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleMovieLoadedImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleMovieLoadedImplCopyWith<_$GetSingleMovieLoadedImpl>
      get copyWith =>
          __$$GetSingleMovieLoadedImplCopyWithImpl<_$GetSingleMovieLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleMovieInitial value) initial,
    required TResult Function(_GetSingleMovieLoading value) loading,
    required TResult Function(_GetSingleMovieLoaded value) loaded,
    required TResult Function(_GetSingleMovieError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleMovieInitial value)? initial,
    TResult? Function(_GetSingleMovieLoading value)? loading,
    TResult? Function(_GetSingleMovieLoaded value)? loaded,
    TResult? Function(_GetSingleMovieError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleMovieInitial value)? initial,
    TResult Function(_GetSingleMovieLoading value)? loading,
    TResult Function(_GetSingleMovieLoaded value)? loaded,
    TResult Function(_GetSingleMovieError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _GetSingleMovieLoaded implements GetSingleMovieState {
  const factory _GetSingleMovieLoaded(
      {required final MovieDetailsModel result}) = _$GetSingleMovieLoadedImpl;

  MovieDetailsModel get result;

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleMovieLoadedImplCopyWith<_$GetSingleMovieLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSingleMovieErrorImplCopyWith<$Res> {
  factory _$$GetSingleMovieErrorImplCopyWith(_$GetSingleMovieErrorImpl value,
          $Res Function(_$GetSingleMovieErrorImpl) then) =
      __$$GetSingleMovieErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetSingleMovieErrorImplCopyWithImpl<$Res>
    extends _$GetSingleMovieStateCopyWithImpl<$Res, _$GetSingleMovieErrorImpl>
    implements _$$GetSingleMovieErrorImplCopyWith<$Res> {
  __$$GetSingleMovieErrorImplCopyWithImpl(_$GetSingleMovieErrorImpl _value,
      $Res Function(_$GetSingleMovieErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetSingleMovieErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSingleMovieErrorImpl implements _GetSingleMovieError {
  const _$GetSingleMovieErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GetSingleMovieState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleMovieErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleMovieErrorImplCopyWith<_$GetSingleMovieErrorImpl> get copyWith =>
      __$$GetSingleMovieErrorImplCopyWithImpl<_$GetSingleMovieErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel result) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsModel result)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsModel result)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleMovieInitial value) initial,
    required TResult Function(_GetSingleMovieLoading value) loading,
    required TResult Function(_GetSingleMovieLoaded value) loaded,
    required TResult Function(_GetSingleMovieError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleMovieInitial value)? initial,
    TResult? Function(_GetSingleMovieLoading value)? loading,
    TResult? Function(_GetSingleMovieLoaded value)? loaded,
    TResult? Function(_GetSingleMovieError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleMovieInitial value)? initial,
    TResult Function(_GetSingleMovieLoading value)? loading,
    TResult Function(_GetSingleMovieLoaded value)? loaded,
    TResult Function(_GetSingleMovieError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GetSingleMovieError implements GetSingleMovieState {
  const factory _GetSingleMovieError({required final String message}) =
      _$GetSingleMovieErrorImpl;

  String get message;

  /// Create a copy of GetSingleMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleMovieErrorImplCopyWith<_$GetSingleMovieErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
