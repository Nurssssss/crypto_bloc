abstract class CryptoEvent {}

class LoadCryptoData extends CryptoEvent {}

class FilterGainers extends CryptoEvent {}

class ResetFilter extends CryptoEvent {}

class ClearCache extends CryptoEvent {}

class ToggleFavorite extends CryptoEvent {
  final String id;
  ToggleFavorite(this.id);
}

class FilterFavorites extends CryptoEvent {}

class FilterDecliners extends CryptoEvent {}

class FilterTop10 extends CryptoEvent {}
