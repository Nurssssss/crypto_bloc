import 'package:crypto_bloc/bloc/crypto_bloc.dart';
import 'package:crypto_bloc/bloc/crypto_event.dart';
import 'package:crypto_bloc/bloc/crypto_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto App'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CryptoBloc>().add(ClearCache());
            },
            icon: Icon(Icons.delete_outline),
          ),
        ],
      ),
      body: BlocConsumer<CryptoBloc, CryptoState>(
        listener: (context, state) {
          if (state.error != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Ошибка')));
          }
        },
        builder: (context, state) {
          final lastUpdate = Hive.box(
            'settingsBox',
          ).get('last_update', defaultValue: 'Никогда не обновлялось');

          var displayList = state.cryptoList;

          if (state.showOnlyFavorites) {
            displayList = displayList.where((c) {
              return state.favoritesIds.contains(c.id);
            }).toList();
          }

          if (state.isLoading && state.cryptoList.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              if (state.isLoading && state.cryptoList.isNotEmpty)
                LinearProgressIndicator(),
              SizedBox(height: 20),
              Wrap(
                spacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<CryptoBloc>().add(FilterGainers());
                    },
                    child: Text('Рост'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      context.read<CryptoBloc>().add(FilterDecliners());
                    },
                    child: Text('Падение'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CryptoBloc>().add(FilterTop10());
                    },
                    child: Text('Топ-10'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CryptoBloc>().add(FilterFavorites());
                    },
                    child: Text('Избранные'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CryptoBloc>().add(ResetFilter());
                    },
                    child: Text('Сброс'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Последнее обновление: $lastUpdate'),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: displayList.length,
                  itemBuilder: (context, index) {
                    final crypto = displayList[index];
                    final isFavorite = state.favoritesIds.contains(crypto.id);
                    return Card(
                      child: ListTile(
                        title: Text(crypto.name),
                        subtitle: Text('${crypto.priceUsd}\$'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${crypto.percentChange24h}%',
                              style: TextStyle(
                                color:
                                    double.parse(crypto.percentChange24h) >= 0
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context.read<CryptoBloc>().add(
                                  ToggleFavorite(crypto.id),
                                );
                              },
                              icon: isFavorite
                                  ? Icon(Icons.star)
                                  : Icon(Icons.star_border),
                              color: isFavorite ? Colors.yellow : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
