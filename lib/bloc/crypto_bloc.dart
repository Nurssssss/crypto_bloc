import 'package:crypto_bloc/crypto_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:crypto_bloc/bloc/crypto_event.dart';
import 'package:crypto_bloc/bloc/crypto_state.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoRepository cryptoRepository;

  CryptoBloc(this.cryptoRepository) : super(const CryptoState()) {
    on<LoadCryptoData>((event, emit) async {
      final localData = cryptoRepository.getLocalCryptoData();
      final savedFavorites = cryptoRepository.getFavoriteIds();

      if (localData.isNotEmpty) {
        emit(
          state.copyWith(
            cryptoList: localData,
            favoritesIds: savedFavorites,
            isLoading: true,
            error: null,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isLoading: true,
            favoritesIds: savedFavorites,
            error: null,
          ),
        );
      }

      await Future.delayed(Duration(seconds: 5));

      try {
        final data = await cryptoRepository.fetchCryptoData();
        emit(state.copyWith(cryptoList: data, isLoading: false));
      } catch (e) {
        emit(state.copyWith(error: e.toString(), isLoading: false));
      }
    });

    on<FilterGainers>((event, emit) {
      final gainers = state.cryptoList.where(
        (item) => double.parse(item.percentChange24h) > 0,
      );

      emit(state.copyWith(cryptoList: gainers.toList()));
    });

    on<ResetFilter>((event, emit) {
      add(LoadCryptoData());
    });

    on<ClearCache>((event, emit) async {
      await cryptoRepository.clearCache();
      emit(state.copyWith(cryptoList: []));
    });

    on<ToggleFavorite>((event, emit) {
      final currentFavorites = Set<String>.from(state.favoritesIds);
      if (currentFavorites.contains(event.id)) {
        currentFavorites.remove(event.id);
      } else {
        currentFavorites.add(event.id);
      }
      cryptoRepository.toggleFavorite(event.id);
      emit(state.copyWith(favoritesIds: currentFavorites));
    });

    on<FilterFavorites>((event, emit) {
      emit(state.copyWith(showOnlyFavorites: !state.showOnlyFavorites));
    });

    on<FilterDecliners>((event, emit) {
      final decliners = state.cryptoList.where(
        (item) => double.parse(item.percentChange24h) < 0,
      );
      emit(state.copyWith(cryptoList: decliners.toList()));
    });

    on<FilterTop10>((event, emit) {
      final sorted = [...state.cryptoList]
        ..sort((a, b) => double.parse(b.priceUsd).compareTo(double.parse(a.priceUsd)));
      emit(state.copyWith(cryptoList: sorted.take(10).toList()));
    });
  }
}
