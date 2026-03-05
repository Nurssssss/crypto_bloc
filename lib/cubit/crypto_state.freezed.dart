// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CryptoState {

 List<CryptoModel> get cryptoList; bool get isLoading; String? get error;
/// Create a copy of CryptoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoStateCopyWith<CryptoState> get copyWith => _$CryptoStateCopyWithImpl<CryptoState>(this as CryptoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoState&&const DeepCollectionEquality().equals(other.cryptoList, cryptoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cryptoList),isLoading,error);

@override
String toString() {
  return 'CryptoState(cryptoList: $cryptoList, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $CryptoStateCopyWith<$Res>  {
  factory $CryptoStateCopyWith(CryptoState value, $Res Function(CryptoState) _then) = _$CryptoStateCopyWithImpl;
@useResult
$Res call({
 List<CryptoModel> cryptoList, bool isLoading, String? error
});




}
/// @nodoc
class _$CryptoStateCopyWithImpl<$Res>
    implements $CryptoStateCopyWith<$Res> {
  _$CryptoStateCopyWithImpl(this._self, this._then);

  final CryptoState _self;
  final $Res Function(CryptoState) _then;

/// Create a copy of CryptoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cryptoList = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
cryptoList: null == cryptoList ? _self.cryptoList : cryptoList // ignore: cast_nullable_to_non_nullable
as List<CryptoModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoState].
extension CryptoStatePatterns on CryptoState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoState value)  $default,){
final _that = this;
switch (_that) {
case _CryptoState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoState value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CryptoModel> cryptoList,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoState() when $default != null:
return $default(_that.cryptoList,_that.isLoading,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CryptoModel> cryptoList,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CryptoState():
return $default(_that.cryptoList,_that.isLoading,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CryptoModel> cryptoList,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CryptoState() when $default != null:
return $default(_that.cryptoList,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CryptoState implements CryptoState {
  const _CryptoState({final  List<CryptoModel> cryptoList = const [], this.isLoading = false, this.error}): _cryptoList = cryptoList;
  

 final  List<CryptoModel> _cryptoList;
@override@JsonKey() List<CryptoModel> get cryptoList {
  if (_cryptoList is EqualUnmodifiableListView) return _cryptoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cryptoList);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of CryptoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoStateCopyWith<_CryptoState> get copyWith => __$CryptoStateCopyWithImpl<_CryptoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoState&&const DeepCollectionEquality().equals(other._cryptoList, _cryptoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cryptoList),isLoading,error);

@override
String toString() {
  return 'CryptoState(cryptoList: $cryptoList, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CryptoStateCopyWith<$Res> implements $CryptoStateCopyWith<$Res> {
  factory _$CryptoStateCopyWith(_CryptoState value, $Res Function(_CryptoState) _then) = __$CryptoStateCopyWithImpl;
@override @useResult
$Res call({
 List<CryptoModel> cryptoList, bool isLoading, String? error
});




}
/// @nodoc
class __$CryptoStateCopyWithImpl<$Res>
    implements _$CryptoStateCopyWith<$Res> {
  __$CryptoStateCopyWithImpl(this._self, this._then);

  final _CryptoState _self;
  final $Res Function(_CryptoState) _then;

/// Create a copy of CryptoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cryptoList = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_CryptoState(
cryptoList: null == cryptoList ? _self._cryptoList : cryptoList // ignore: cast_nullable_to_non_nullable
as List<CryptoModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
