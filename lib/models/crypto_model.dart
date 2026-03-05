import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive_ce.dart';

part 'crypto_model.freezed.dart';
part 'crypto_model.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class CryptoModel with _$CryptoModel {
  const factory CryptoModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String symbol,
    @HiveField(3) required int rank,
    @HiveField(4) @JsonKey(name: 'price_usd') required String priceUsd,
    @HiveField(5) @JsonKey(name: 'percent_change_24h') required String percentChange24h
  }) = _CryptoModel;

  factory CryptoModel.fromJson(Map<String, dynamic> json) => 
  _$CryptoModelFromJson(json);
}
