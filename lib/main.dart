import 'package:crypto_bloc/bloc/crypto_bloc.dart';
import 'package:crypto_bloc/bloc/crypto_event.dart';
import 'package:crypto_bloc/crypto_page.dart';
import 'package:crypto_bloc/crypto_repository.dart';
import 'package:crypto_bloc/models/crypto_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(CryptoModelAdapter());

  await Hive.openBox<CryptoModel>('cryptoBox');

  await Hive.openBox('settingsBox');

  await Hive.openBox<String>('favoritesBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: BlocProvider(
        create: (_) => CryptoBloc(CryptoRepository())..add(LoadCryptoData()),
        child: CryptoPage(),
      ),
    );
  }
}
