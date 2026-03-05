// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CryptoModel {

@HiveField(0) String get id;@HiveField(1) String get name;@HiveField(2) String get symbol;@HiveField(3) int get rank;@HiveField(4)@JsonKey(name: 'price_usd') String get priceUsd;@HiveField(5)@JsonKey(name: 'percent_change_24h') String get percentChange24h;
/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoModelCopyWith<CryptoModel> get copyWith => _$CryptoModelCopyWithImpl<CryptoModel>(this as CryptoModel, _$identity);

  /// Serializes this CryptoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.priceUsd, priceUsd) || other.priceUsd == priceUsd)&&(identical(other.percentChange24h, percentChange24h) || other.percentChange24h == percentChange24h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,rank,priceUsd,percentChange24h);

@override
String toString() {
  return 'CryptoModel(id: $id, name: $name, symbol: $symbol, rank: $rank, priceUsd: $priceUsd, percentChange24h: $percentChange24h)';
}


}

/// @nodoc
abstract mixin class $CryptoModelCopyWith<$Res>  {
  factory $CryptoModelCopyWith(CryptoModel value, $Res Function(CryptoModel) _then) = _$CryptoModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String name,@HiveField(2) String symbol,@HiveField(3) int rank,@HiveField(4)@JsonKey(name: 'price_usd') String priceUsd,@HiveField(5)@JsonKey(name: 'percent_change_24h') String percentChange24h
});




}
/// @nodoc
class _$CryptoModelCopyWithImpl<$Res>
    implements $CryptoModelCopyWith<$Res> {
  _$CryptoModelCopyWithImpl(this._self, this._then);

  final CryptoModel _self;
  final $Res Function(CryptoModel) _then;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? rank = null,Object? priceUsd = null,Object? percentChange24h = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,priceUsd: null == priceUsd ? _self.priceUsd : priceUsd // ignore: cast_nullable_to_non_nullable
as String,percentChange24h: null == percentChange24h ? _self.percentChange24h : percentChange24h // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoModel].
extension CryptoModelPatterns on CryptoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoModel value)  $default,){
final _that = this;
switch (_that) {
case _CryptoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoModel value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String name, @HiveField(2)  String symbol, @HiveField(3)  int rank, @HiveField(4)@JsonKey(name: 'price_usd')  String priceUsd, @HiveField(5)@JsonKey(name: 'percent_change_24h')  String percentChange24h)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.priceUsd,_that.percentChange24h);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String name, @HiveField(2)  String symbol, @HiveField(3)  int rank, @HiveField(4)@JsonKey(name: 'price_usd')  String priceUsd, @HiveField(5)@JsonKey(name: 'percent_change_24h')  String percentChange24h)  $default,) {final _that = this;
switch (_that) {
case _CryptoModel():
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.priceUsd,_that.percentChange24h);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String name, @HiveField(2)  String symbol, @HiveField(3)  int rank, @HiveField(4)@JsonKey(name: 'price_usd')  String priceUsd, @HiveField(5)@JsonKey(name: 'percent_change_24h')  String percentChange24h)?  $default,) {final _that = this;
switch (_that) {
case _CryptoModel() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.priceUsd,_that.percentChange24h);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryptoModel implements CryptoModel {
  const _CryptoModel({@HiveField(0) required this.id, @HiveField(1) required this.name, @HiveField(2) required this.symbol, @HiveField(3) required this.rank, @HiveField(4)@JsonKey(name: 'price_usd') required this.priceUsd, @HiveField(5)@JsonKey(name: 'percent_change_24h') required this.percentChange24h});
  factory _CryptoModel.fromJson(Map<String, dynamic> json) => _$CryptoModelFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String name;
@override@HiveField(2) final  String symbol;
@override@HiveField(3) final  int rank;
@override@HiveField(4)@JsonKey(name: 'price_usd') final  String priceUsd;
@override@HiveField(5)@JsonKey(name: 'percent_change_24h') final  String percentChange24h;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoModelCopyWith<_CryptoModel> get copyWith => __$CryptoModelCopyWithImpl<_CryptoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.priceUsd, priceUsd) || other.priceUsd == priceUsd)&&(identical(other.percentChange24h, percentChange24h) || other.percentChange24h == percentChange24h));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,rank,priceUsd,percentChange24h);

@override
String toString() {
  return 'CryptoModel(id: $id, name: $name, symbol: $symbol, rank: $rank, priceUsd: $priceUsd, percentChange24h: $percentChange24h)';
}


}

/// @nodoc
abstract mixin class _$CryptoModelCopyWith<$Res> implements $CryptoModelCopyWith<$Res> {
  factory _$CryptoModelCopyWith(_CryptoModel value, $Res Function(_CryptoModel) _then) = __$CryptoModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String name,@HiveField(2) String symbol,@HiveField(3) int rank,@HiveField(4)@JsonKey(name: 'price_usd') String priceUsd,@HiveField(5)@JsonKey(name: 'percent_change_24h') String percentChange24h
});




}
/// @nodoc
class __$CryptoModelCopyWithImpl<$Res>
    implements _$CryptoModelCopyWith<$Res> {
  __$CryptoModelCopyWithImpl(this._self, this._then);

  final _CryptoModel _self;
  final $Res Function(_CryptoModel) _then;

/// Create a copy of CryptoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? rank = null,Object? priceUsd = null,Object? percentChange24h = null,}) {
  return _then(_CryptoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,priceUsd: null == priceUsd ? _self.priceUsd : priceUsd // ignore: cast_nullable_to_non_nullable
as String,percentChange24h: null == percentChange24h ? _self.percentChange24h : percentChange24h // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
