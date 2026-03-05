import 'package:crypto_bloc/crypto_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_bloc/cubit/crypto_state.dart';

class CryptoCubit extends Cubit<CryptoState> {
  final CryptoRepository cryptoRepository;

  CryptoCubit(this.cryptoRepository) : super(const CryptoState());

  Future<void> loadCryptoData() async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final data = await cryptoRepository.fetchCryptoData();

      emit(state.copyWith(cryptoList: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: 'Ошибка', isLoading: false));
    }
  }
}
