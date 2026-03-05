import 'package:crypto_bloc/models/crypto_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_state.freezed.dart';

@freezed
abstract class CryptoState with _$CryptoState {
  const factory CryptoState({
    @Default([]) List<CryptoModel> cryptoList,
    @Default(false) bool isLoading,
    String? error,

    @Default({}) Set<String> favoritesIds,
    @Default(false) bool showOnlyFavorites,
  }) = _CryptoState;
}
